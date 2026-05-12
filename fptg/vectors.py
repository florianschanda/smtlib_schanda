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

from copy import copy
from hashlib import sha1

from mpf.floats import MPF, RM_RNE, fp_sqrt
from mpf.rationals import Rational, q_pow2

from fptg.random import RNG
from fptg.enums import Float_Test_Vector


class Random_Hierarchy:
    def __init__(self, base=None):
        assert isinstance(base, Random_Hierarchy) or base is None
        if base is None:
            self.parts = []
            self.hf    = sha1()
        else:
            self.parts = copy(base.parts)
            self.hf    = base.hf.copy()

    def extend(self, s):
        assert isinstance(s, str) and "|" not in s
        new = Random_Hierarchy(self)
        new.parts.append(s)
        if len(new.parts) >= 2:
            new.hf.update(b'|')
        new.hf.update(s.encode("UTF-8"))
        return new

    def rng(self):
        assert self.hf.digest_size == 20
        digest = self.hf.digest()
        seed   = []
        for offset in (0, 4, 8, 12, 16):
            seed.append(int(digest[offset:offset+4].hex(), 16))
        return RNG(*seed)


class Float_Vector:
    def __init__(self, kind, is_negative, iteration):
        assert isinstance(kind, Float_Test_Vector)
        assert isinstance(is_negative, bool)
        assert isinstance(iteration, int) and iteration >= 1
        self.kind        = kind
        self.is_negative = is_negative
        self.iteration   = iteration

    def tag(self):
        tag = "-" if self.is_negative else "+"
        tag += self.kind.name
        if self.iteration > 1:
            tag += "(%u)" % self.iteration
        return tag

    def mk_float(self, base_rh, eb, sb):
        assert isinstance(base_rh, Random_Hierarchy)
        assert isinstance(eb, int) and eb >= 2
        assert isinstance(sb, int) and sb >= 2

        rng = base_rh.extend(self.tag()).rng()

        rv = MPF(eb, sb)

        match self.kind:
            case Float_Test_Vector.ZERO:
                rv.set_zero(0)
            case Float_Test_Vector.SMALLEST_SUBNORMAL:
                rv.pack(0, 0, 1)
            case Float_Test_Vector.RANDOM_SUBNORMAL:
                min_bv = 2
                max_bv = 2 ** rv.t - 2
                if min_bv <= max_bv:
                    rv.pack(0, 0, rng.random_int(min_bv, max_bv))
                else:
                    return None
            case Float_Test_Vector.LARGEST_SUBNORMAL:
                rv.pack(0, 0, 2 ** rv.t - 1)
            case Float_Test_Vector.SMALLEST_NORMAL:
                rv.pack(0, 1, 0)
            case Float_Test_Vector.LARGEST_NORMAL:
                rv.pack(0, 2 ** rv.w - 2, 2 ** rv.t - 1)
            case Float_Test_Vector.RANDOM_NORMAL_LT_ONE:
                rv.pack(0, 1, 1)
                min_bv = rv.bv
                rv.from_rational(RM_RNE, Rational(1))
                max_bv = rv.bv - 1
                if min_bv <= max_bv:
                    rv.bv = rng.random_int(min_bv, max_bv)
                else:
                    return None
            case Float_Test_Vector.ONE:
                rv.from_rational(RM_RNE, Rational(1))
            case Float_Test_Vector.RANDOM_NORMAL_LT_TWO:
                rv.from_rational(RM_RNE, Rational(1))
                min_bv = rv.bv + 1
                rv.from_rational(RM_RNE, Rational(2))
                max_bv = rv.bv - 1
                assert min_bv <= max_bv
                # In the pathological case MPF(2, 2) we have exactly
                # one bitvector that fits
                rv.bv = rng.random_int(min_bv, max_bv)
            case Float_Test_Vector.RANDOM_NORMAL_GE_TWO:
                rv.from_rational(RM_RNE, Rational(2))
                min_bv = rv.bv
                rv.pack(0, 2 ** rv.w - 2, 2 ** rv.t - 1)
                max_bv = rv.bv - 1
                assert min_bv <= max_bv
                # Again in the pathological case we have 2.0
                rv.bv = rng.random_int(min_bv, max_bv)
            case Float_Test_Vector.INT_BOUNDARY:
                rv.pack(0, 2 ** rv.w - 2, 2 ** rv.t - 1)
                max_q = rv.to_rational()
                boundary_q = q_pow2(eb)
                if max_q >= boundary_q:
                    rv.from_rational(RM_RNE, boundary_q)
                    assert rv.to_rational() == boundary_q
                else:
                    return None
            case Float_Test_Vector.RANDOM_INTEGRAL_GT_TWO:
                min_int = 3
                max_int = 2 ** eb - 1
                if min_int <= max_int:
                    rnd_int = Rational(rng.random_int(min_int, max_int))
                    rv.from_rational(RM_RNE, rnd_int)
                    assert rv.to_rational() == rnd_int
                else:
                    return None
            case Float_Test_Vector.RANDOM_GT_INT_BOUNDARY:
                boundary_q = q_pow2(eb)
                rv.from_rational(RM_RNE, boundary_q)
                if not rv.isFinite():
                    return None
                min_bv = rv.bv
                rv.pack(0, 2 ** rv.w - 2, 2 ** rv.t - 1)
                max_bv = rv.bv - 1
                if min_bv <= max_bv:
                    rv.bv = rng.random_int(min_bv, max_bv)
                else:
                    return None
            case Float_Test_Vector.INFINITY:
                rv.set_infinite(0)
            case Float_Test_Vector.NAN:
                rv.pack(0,
                        2 ** rv.w - 1,
                        rng.random_int(1, 2 ** rv.t - 1))
            case Float_Test_Vector.SQRT_LARGEST_NORMAL:
                rv.pack(0, 2 ** rv.w - 2, 2 ** rv.t - 1)
                rv = fp_sqrt(RM_RNE, rv)
            case Float_Test_Vector.SQRT_SMALLEST_NORMAL:
                rv.pack(0, 1, 0)
                rv = fp_sqrt(RM_RNE, rv)
            case Float_Test_Vector.SQRT_SMALLEST_SUBNORMAL:
                rv.pack(0, 0, 1)
                rv = fp_sqrt(RM_RNE, rv)
            case Float_Test_Vector.RCP_LARGEST_NORMAL:
                rv.pack(0, 2 ** rv.w - 2, 2 ** rv.t - 1)
                rv.from_rational(RM_RNE, Rational(1) / rv.to_rational())
            case Float_Test_Vector.RCP_SMALLEST_NORMAL:
                rv.pack(0, 1, 0)
                rv.from_rational(RM_RNE, Rational(1) / rv.to_rational())
            case Float_Test_Vector.RCP_SMALLEST_SUBNORMAL:
                rv.pack(0, 0, 1)
                rv.from_rational(RM_RNE, Rational(1) / rv.to_rational())
            case _:
                assert False, "logic error"

        rv.set_sign_bit(1 if self.is_negative else 0)

        return rv


def mk_float_vectors(base_rh, eb, sb, iterations):
    assert isinstance(base_rh, Random_Hierarchy)
    assert isinstance(eb, int) and eb >= 2
    assert isinstance(sb, int) and sb >= 2
    assert isinstance(iterations, int) and iterations >= 1

    bitvectors = set()
    rv         = []
    for kind in Float_Test_Vector:
        for sign in (False, True):
            if kind in (Float_Test_Vector.ZERO,
                        Float_Test_Vector.SMALLEST_SUBNORMAL,
                        Float_Test_Vector.LARGEST_SUBNORMAL,
                        Float_Test_Vector.SMALLEST_NORMAL,
                        Float_Test_Vector.LARGEST_NORMAL,
                        Float_Test_Vector.ONE,
                        Float_Test_Vector.INT_BOUNDARY,
                        Float_Test_Vector.INFINITY):
                required_iterations = 1
            else:
                required_iterations = iterations
            for iteration in range(1, required_iterations + 1):
                vec = Float_Vector(kind        = kind,
                                   is_negative = sign,
                                   iteration   = iteration)
                flt = vec.mk_float(base_rh, eb, sb)
                if flt is None or flt.bv in bitvectors:
                    continue
                bitvectors.add(flt.bv)
                rv.append((vec, flt))
    return rv


def sanity_test():
    rh = Random_Hierarchy()

    for vec, flt in mk_float_vectors(rh, 3, 8, 1):
        print("%-20s %s" % (flt.to_python_string(), vec.tag()))


if __name__ == "__main__":
    sanity_test()
