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


class Unspecified(Exception):
    pass


class Error(Exception):
    def __init__(self, message):
        assert isinstance(message, str)
        self.message = message


class Validation_Error(Exception):
    def __init__(self,
                 impl_a, impl_b,
                 op, rm=None, arg1=None, arg2=None, arg3=None):
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
        assert isinstance(arg1, MPF)
        assert isinstance(arg2, MPF) or arg2 is None
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

        match op:
            case Float_Operation.ADD:
                mpf_val = mpf.floats.fp_add(mpf_rm, arg1, arg2)
            case _:
                assert False

        self.signal_validation(op, Implementation.PYMPF)
        return mpf_val

    def call_native(self, impl, op, rm=None, arg1=None, arg2=None, arg3=None):
        assert impl in (Implementation.NATIVE_SSE,
                        Implementation.NATIVE_X87,
                        Implementation.SOFTFLOAT)
        assert isinstance(op, Float_Operation)
        assert isinstance(rm, Rounding) or rm is None
        assert isinstance(arg1, MPF)
        assert isinstance(arg2, MPF) or arg2 is None
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
        match arg1.w, arg1.p:
            case 8, 24:
                cmd_name += "32"
                cmd.append(os.path.join("util", cmd_name))
            case _:
                self.signal_not_supported(op, impl)
                return None

        match op:
            case Float_Operation.ADD:
                cmd.append("fp.add")

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
        assert isinstance(arg2, MPF) or arg2 is None
        assert isinstance(arg3, MPF) or arg3 is None

        # Create MPFR context. Because they are fr*nch we have to
        # calculate their emin and emax. They kindly point out that
        # it's different but they did not bother explaining how to get
        # from the rest of the world to their world.
        assert arg1.emax + 1 > 0
        assert arg1.emin - arg1.p + 2 < 0
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
                case Float_Operation.ADD:
                    result = mpf_to_mpfr(arg1) + mpf_to_mpfr(arg2)
                case _:
                    assert False

            rv = mpfr_to_mpf(result)
            self.signal_validation(op, Implementation.MPFR)
            return rv

    def perform(self, op, rm=None, arg1=None, arg2=None, arg3=None):
        assert isinstance(op, Float_Operation)
        assert isinstance(rm, Rounding) or rm is None
        assert isinstance(arg1, MPF)
        assert isinstance(arg2, MPF) or arg2 is None
        assert isinstance(arg3, MPF) or arg3 is None
        for arg in (arg2, arg3):
            if arg is not None:
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
