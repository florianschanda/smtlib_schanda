#!/usr/bin/env python3
#
# This file is part of smtlib_schanda.
#
# smtlib_schanda is free software: you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# smtlib_schanda is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with smtlib_schanda. If not, see
# <https://www.gnu.org/licenses/>.

import os.path
import subprocess

import mpf.floats
from mpf.floats import MPF
from mpf.bitvector import BitVector

import gmpy2

from fptg.enums import Rounding, Implementation, Float_Operation, Validation
from fptg.mpfr import mpf_to_mpfr, mpfr_to_mpf


def int_boundary(fmt):
    """Calculates the largest integer for which (and all preceding
       integers) have a precise representation. After this integer the
       distance between one float and the next is > 1.
    """
    assert isinstance(fmt, MPF)
    if fmt.p <= fmt.emax:
        return 2 ** fmt.p
    else:
        return 2 ** (fmt.emax + 1) - 1


def total_order(value):
    assert isinstance(value, MPF)
    S, E, T = value.unpack()

    max_bv = 2 ** (value.k - 1) - 1
    bv     = E << value.t | T
    if S == 1:
        return max_bv - bv
    else:
        return max_bv + 1 + bv


def from_total_order(to, fmt):
    assert isinstance(to, int)
    assert isinstance(fmt, MPF)
    max_bv = 2 ** (fmt.k - 1) - 1
    rv = fmt.new_mpf()
    if to <= max_bv:
        rv.bv = max_bv - to | (max_bv + 1)
    else:
        rv.bv = to - 1 - max_bv
    assert total_order(rv) == to
    return rv


def total_order_finite_range(fmt):
    assert isinstance(fmt, MPF)
    x = fmt.new_mpf()
    x.pack(1, 2 ** fmt.w - 2, 2 ** fmt.t - 1)
    to_min = total_order(x)
    x.pack(0, 2 ** fmt.w - 2, 2 ** fmt.t - 1)
    to_max = total_order(x)
    return to_min, to_max


def total_order_infinite_range(fmt):
    assert isinstance(fmt, MPF)
    x = fmt.new_mpf()
    x.pack(1, 2 ** fmt.w - 1, 0)
    to_min = total_order(x)
    x.pack(0, 2 ** fmt.w - 1, 0)
    to_max = total_order(x)
    return to_min, to_max


class Unspecified(Exception):
    pass


class Error(Exception):
    def __init__(self, message):
        assert isinstance(message, str)
        self.message = message


class Validation_Error(Exception):
    def __init__(self,
                 impl_a, impl_b, op,
                 rm=None, arg1=None, arg2=None, arg3=None):
        assert isinstance(impl_a, Implementation)
        assert isinstance(impl_b, Implementation)
        assert impl_a != impl_b
        assert isinstance(op, Float_Operation)
        assert isinstance(rm, Rounding) or rm is None
        assert isinstance(arg1, MPF)
        assert isinstance(arg2, MPF) or arg2 is None
        assert isinstance(arg3, MPF) or arg3 is None
        self.impl_a = impl_a
        self.impl_b = impl_b
        self.op     = op
        self.rm     = rm
        self.arg1   = arg1
        self.arg2   = arg2
        self.arg3   = arg3


class Format:
    def __init__(self, eb, sb):
        assert isinstance(eb, int) and eb >= 2
        assert isinstance(sb, int) and sb >= 2
        self.eb = eb
        self.sb = sb

    def __str__(self):
        return "FloatingPoint(%u, %u)" % (self.eb,
                                          self.sb)

    def smtlib_sort(self):
        match self.eb, self.sb:
            case 5, 11:
                return "Float16"
            case 8, 24:
                return "Float32"
            case 11, 53:
                return "Float64"
            case 15, 113:
                return "Float128"
            case _:
                return "(_ FloatingPoint %u %u)" % (self.eb, self.sb)


class Context:
    def __init__(self):
        self.validation = {}
        self.redundancy = True

    def info_list(self):
        rv = []
        rv.append("Redundancy: %s" % self.redundancy)
        for op, results in self.validation.items():
            rv.append("Validation for: %s" % op.name)
            for impl, status in results.items():
                rv.append("  * %s: %s" % (impl.name, status.name))
        return rv

    def signal_validation(self, op, impl):
        assert isinstance(op, Float_Operation)
        assert isinstance(impl, Implementation)
        if op not in self.validation:
            self.validation[op] = {impl: Validation.FULL}
        elif impl not in self.validation[op]:
            self.validation[op][impl] = Validation.FULL
        elif self.validation[op][impl] == Validation.NONE:
            self.validation[op][impl] = Validation.PARTIAL

    def signal_not_supported(self, op, impl):
        assert isinstance(op, Float_Operation)
        assert isinstance(impl, Implementation)
        if op not in self.validation:
            self.validation[op] = {impl: Validation.NONE}
        elif impl not in self.validation[op]:
            self.validation[op][impl] = Validation.NONE
        elif self.validation[op][impl] == Validation.FULL:
            self.validation[op][impl] = Validation.PARTIAL

    def call_pympf(self, op, rm=None, arg1=None, arg2=None, arg3=None):
        assert isinstance(op, Float_Operation)
        assert isinstance(rm, Rounding) or rm is None
        assert isinstance(arg1, (MPF, BitVector))
        assert isinstance(arg2, (MPF, int, Format)) or arg2 is None
        assert isinstance(arg3, MPF) or arg3 is None

        match rm:
            case Rounding.NEAREST_EVEN:
                mpf_rm = mpf.floats.RM_RNE
            case Rounding.NEAREST_AWAY:
                mpf_rm = mpf.floats.RM_RNA
            case Rounding.TOWARDS_NEGATIVE:
                mpf_rm = mpf.floats.RM_RTN
            case Rounding.TOWARDS_POSITIVE:
                mpf_rm = mpf.floats.RM_RTP
            case Rounding.TOWARDS_ZERO:
                mpf_rm = mpf.floats.RM_RTZ
            case None:
                pass

        unspecified = False
        try:
            match op:
                case Float_Operation.ABS:
                    val = abs(arg1)
                case Float_Operation.NEG:
                    val = -arg1
                case Float_Operation.ADD:
                    val = mpf.floats.fp_add(mpf_rm, arg1, arg2)
                case Float_Operation.SUB:
                    val = mpf.floats.fp_sub(mpf_rm, arg1, arg2)
                case Float_Operation.MUL:
                    val = mpf.floats.fp_mul(mpf_rm, arg1, arg2)
                case Float_Operation.DIV:
                    val = mpf.floats.fp_div(mpf_rm, arg1, arg2)
                case Float_Operation.FMA:
                    val = mpf.floats.fp_fma(mpf_rm, arg1, arg2, arg3)
                case Float_Operation.SQRT:
                    val = mpf.floats.fp_sqrt(mpf_rm, arg1)
                case Float_Operation.REM:
                    val = mpf.floats.fp_rem(arg1, arg2)
                case Float_Operation.ROUND_TO_INTEGRAL:
                    val = mpf.floats.fp_roundToIntegral(mpf_rm, arg1)
                case Float_Operation.MIN:
                    val = mpf.floats.fp_min(arg1, arg2)
                case Float_Operation.MAX:
                    val = mpf.floats.fp_max(arg1, arg2)
                case Float_Operation.LEQ:
                    val = arg1 <= arg2
                case Float_Operation.LT:
                    val = arg1 < arg2
                case Float_Operation.GEQ:
                    val = arg1 >= arg2
                case Float_Operation.GT:
                    val = arg1 > arg2
                case Float_Operation.EQ:
                    val = arg1 == arg2
                case Float_Operation.IS_NORMAL:
                    val = arg1.isNormal()
                case Float_Operation.IS_SUBNORMAL:
                    val = arg1.isSubnormal()
                case Float_Operation.IS_ZERO:
                    val = arg1.isZero()
                case Float_Operation.IS_INFINITE:
                    val = arg1.isInfinite()
                case Float_Operation.IS_NAN:
                    val = arg1.isNaN()
                case Float_Operation.IS_NEGATIVE:
                    val = arg1.isNegative()
                case Float_Operation.IS_POSITIVE:
                    val = arg1.isPositive()
                case Float_Operation.FP_TO_UBV:
                    val = mpf.floats.fp_to_ubv(arg1, mpf_rm, arg2)
                case Float_Operation.FP_TO_SBV:
                    val = mpf.floats.fp_to_sbv(arg1, mpf_rm, arg2)
                case _:
                    assert False
        except mpf.floats.Unspecified:
            val     = None
            unspecified = True

        self.signal_validation(op, Implementation.PYMPF)

        if unspecified:
            # Unspecified results never have independent evaluation as
            # PyMPF is the implementation that explicitly flags this.
            self.redundancy = False
            raise Unspecified

        return val

    def call_native(self, impl, op, rm=None, arg1=None, arg2=None, arg3=None):
        assert impl in (Implementation.NATIVE_SSE,
                        Implementation.NATIVE_X87,
                        Implementation.SOFTFLOAT)
        assert isinstance(op, Float_Operation)
        assert isinstance(rm, Rounding) or rm is None
        assert isinstance(arg1, MPF)
        assert isinstance(arg2, (MPF, int)) or arg2 is None
        assert isinstance(arg3, MPF) or arg3 is None

        cmd = []
        match impl:
            case Implementation.NATIVE_SSE:
                cmd_name = "native_sse"
            case Implementation.NATIVE_X87:
                cmd_name = "native_x87"
            case Implementation.SOFTFLOAT:
                cmd_name = "softfloat"
        cmd_name += "_oracle_"
        match arg1.w, arg1.p, impl:
            case 5, 11, Implementation.SOFTFLOAT:
                cmd_name += "16"
                cmd.append(os.path.join("util", cmd_name))
            case 8, 24, _:
                cmd_name += "32"
                cmd.append(os.path.join("util", cmd_name))
            case 11, 53, _:
                cmd_name += "64"
                cmd.append(os.path.join("util", cmd_name))
            case _:
                self.signal_not_supported(op, impl)
                return None

        cmd.append(op.name.lower())

        match rm:
            case Rounding.NEAREST_EVEN:
                cmd.append("rne")
            case Rounding.NEAREST_AWAY:
                cmd.append("rna")
            case Rounding.TOWARDS_NEGATIVE:
                cmd.append("rtn")
            case Rounding.TOWARDS_POSITIVE:
                cmd.append("rtp")
            case Rounding.TOWARDS_ZERO:
                cmd.append("rtz")
            case None:
                pass

        cmd.append("%x" % arg1.bv)
        if arg2 is not None:
            cmd.append("%x" % arg2.bv)
        if arg3 is not None:
            cmd.append("%x" % arg2.bv)

        p = subprocess.run(cmd,
                           stdout   = subprocess.PIPE,
                           stderr   = subprocess.STDOUT,
                           encoding = "UTF-8",
                           check    = False)

        match p.returncode:
            case 0:
                value = MPF(arg1.w, arg1.p, int(p.stdout.strip(), 16))
                self.signal_validation(op, impl)
                return value
            case 1:
                raise Error(p.stdout.strip())
            case 2:
                self.signal_not_supported(op, impl)
                return None

    def call_mpfr(self, op, rm=None, arg1=None, arg2=None, arg3=None):
        assert isinstance(op, Float_Operation)
        assert isinstance(rm, Rounding) or rm is None
        assert isinstance(arg1, MPF)
        assert isinstance(arg2, (MPF, int)) or arg2 is None
        assert isinstance(arg3, MPF) or arg3 is None

        # Create MPFR context. Because they are fr*nch we have to
        # calculate their emin and emax. They kindly point out that
        # it's different but they did not bother explaining how to get
        # from the rest of the world to their world.
        assert arg1.emax + 1 > 0
        assert arg1.emin - arg1.p + 2 <= 0, \
            "it is %i" % (arg1.emin - arg1.p + 2)
        ctx = gmpy2.context(gmpy2.ieee(32),
                            precision = arg1.p,
                            emax      = arg1.emax + 1,
                            emin      = arg1.emin - arg1.p + 2)

        match rm:
            case Rounding.NEAREST_EVEN:
                ctx.round = gmpy2.RoundToNearest
            case Rounding.NEAREST_AWAY:
                # You might be tempted to assume RM_RNA is
                # RoundAwayZero, but this is not correct. That
                # rounding mode is really the inverse of RoundToZero,
                # i.e. it always does this and not just at
                # half-points.
                if op == Float_Operation.ROUND_TO_INTEGRAL:
                    ctx.round = gmpy2.RoundAwayZero
                else:
                    self.signal_not_supported(op, Implementation.MPFR)
                    return None
            case Rounding.TOWARDS_NEGATIVE:
                ctx.round = gmpy2.RoundDown
            case Rounding.TOWARDS_POSITIVE:
                ctx.round = gmpy2.RoundUp
            case Rounding.TOWARDS_ZERO:
                ctx.round = gmpy2.RoundToZero
            case None:
                pass

        with gmpy2.local_context(ctx):
            match op:
                case Float_Operation.ABS:
                    result = abs(mpf_to_mpfr(arg1))
                case Float_Operation.NEG:
                    result = -mpf_to_mpfr(arg1)
                case Float_Operation.ADD:
                    result = mpf_to_mpfr(arg1) + mpf_to_mpfr(arg2)
                case Float_Operation.SUB:
                    result = mpf_to_mpfr(arg1) - mpf_to_mpfr(arg2)
                case Float_Operation.MUL:
                    result = mpf_to_mpfr(arg1) * mpf_to_mpfr(arg2)
                case Float_Operation.DIV:
                    result = mpf_to_mpfr(arg1) / mpf_to_mpfr(arg2)
                case Float_Operation.FMA:
                    result = gmpy2.fma(mpf_to_mpfr(arg1),
                                       mpf_to_mpfr(arg2),
                                       mpf_to_mpfr(arg3))
                case Float_Operation.SQRT:
                    result = gmpy2.sqrt(mpf_to_mpfr(arg1))
                case Float_Operation.REM:
                    result = gmpy2.remainder(mpf_to_mpfr(arg1),
                                             mpf_to_mpfr(arg2))
                case Float_Operation.ROUND_TO_INTEGRAL:
                    if rm == Rounding.NEAREST_AWAY:
                        result = gmpy2.rint_round(mpf_to_mpfr(arg1))
                    else:
                        result = gmpy2.rint(mpf_to_mpfr(arg1))
                case Float_Operation.MIN:
                    result = gmpy2.minnum(mpf_to_mpfr(arg1), mpf_to_mpfr(arg2))
                case Float_Operation.MAX:
                    result = gmpy2.maxnum(mpf_to_mpfr(arg1), mpf_to_mpfr(arg2))
                case _:
                    self.signal_not_supported(op, Implementation.MPFR)
                    return None

            rv = mpfr_to_mpf(result)
            self.signal_validation(op, Implementation.MPFR)
            return rv

    def perform(self, op, rm=None, arg1=None, arg2=None, arg3=None):
        assert isinstance(op, Float_Operation)
        assert isinstance(rm, Rounding) or rm is None
        assert isinstance(arg1, MPF)
        assert isinstance(arg2, (MPF, int)) or arg2 is None
        assert isinstance(arg3, MPF) or arg3 is None
        for arg in (arg2, arg3):
            if isinstance(arg, MPF):
                assert arg1.compatible(arg)

        results = {}
        for impl in Implementation:
            match impl:
                case Implementation.PYMPF:
                    result = self.call_pympf(op   = op,
                                             rm   = rm,
                                             arg1 = arg1,
                                             arg2 = arg2,
                                             arg3 = arg3)
                case (Implementation.NATIVE_SSE |
                      Implementation.NATIVE_X87 |
                      Implementation.SOFTFLOAT):
                    result = self.call_native(impl = impl,
                                              op   = op,
                                              rm   = rm,
                                              arg1 = arg1,
                                              arg2 = arg2,
                                              arg3 = arg3)
                case Implementation.MPFR:
                    result = self.call_mpfr(op   = op,
                                            rm   = rm,
                                            arg1 = arg1,
                                            arg2 = arg2,
                                            arg3 = arg3)

            if result is not None:
                results[impl] = result

        result_pairs = list(results.items())
        assert result_pairs

        # Mark this context as having a single source of truth
        if len(result_pairs) == 1:
            self.redundancy = False

        # Cross-check implementations
        ref_impl, ref_result = result_pairs[0]
        for impl, result in result_pairs[1:]:
            if not mpf.floats.smtlib_eq(ref_result, result):
                raise Validation_Error(impl_a = ref_impl,
                                       impl_b = impl,
                                       op     = op,
                                       rm     = rm,
                                       arg1   = arg1,
                                       arg2   = arg2,
                                       arg3   = arg3)

        return ref_result
