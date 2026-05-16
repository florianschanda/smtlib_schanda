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

import os
import json

from mpf.floats import MPF, RM_RNE, fp_sqrt
from mpf.rationals import Rational

from fptg.floats import Format, int_boundary
from fptg.random import Random_Hierarchy
from fptg.enums import (Float_Operation,
                        Float_Test_Vector,
                        FLOAT_TEST_VECTOR_WITH_ITERATIONS,
                        Format_Test_Vector,
                        FORMAT_TEST_VECTOR_WITH_ITERATIONS)


class Format_Vector:
    FIXED_FORMATS = {
        Format_Test_Vector.FLOAT8              : ( 3,   5),
        Format_Test_Vector.FLOAT16             : ( 5,  11),
        Format_Test_Vector.FLOAT32             : ( 8,  24),
        Format_Test_Vector.FLOAT64             : (11,  53),
        Format_Test_Vector.FLOAT128            : (15, 113),
        Format_Test_Vector.X87_EXTENDED_DOUBLE : (15,  79),
        Format_Test_Vector.BFLOAT16            : ( 8,   8),
        Format_Test_Vector.TENSORFLOAT32       : ( 8,  11),
        Format_Test_Vector.AMD_FP24            : ( 7,  17),
        Format_Test_Vector.PIXAR_PXR24         : ( 8,  16),
        Format_Test_Vector.FLOAT_2_2           : ( 2,   2),
    }
    FIXED_FORMATS_SET = frozenset(FIXED_FORMATS.values())

    def __init__(self, kind, iteration):
        assert isinstance(kind, Format_Test_Vector)
        assert isinstance(iteration, int) and iteration >= 1
        self.kind      = kind
        self.iteration = iteration

    def tag(self):
        tag = self.kind.name
        if self.iteration > 1:
            tag += "(%u)" % self.iteration
        return tag

    def to_json(self):
        return {"kind"      : self.kind.name,
                "iteration" : self.iteration}

    @classmethod
    def from_json(cls, data):
        assert isinstance(data, dict)
        return Format_Vector(Format_Test_Vector[data["kind"]],
                             data["iteration"])

    def mk_format(self, base_rh):
        assert isinstance(base_rh, Random_Hierarchy)

        rng = base_rh.extend(self.tag()).rng()
        eb  = None
        sb  = None

        match self.kind:
            case Format_Test_Vector.FLOAT_RANDOM_EB_EQ_SB:
                while True:
                    eb = rng.random_int(3, 18)
                    sb = eb
                    if (eb, sb) not in Format_Vector.FIXED_FORMATS_SET:
                        break

            case Format_Test_Vector.FLOAT_RANDOM_EB_LT_SB:
                while True:
                    eb = rng.random_int(2, 18)
                    sb = rng.random_int(eb + 1, 255)
                    if (eb, sb) not in Format_Vector.FIXED_FORMATS_SET:
                        break

            case Format_Test_Vector.FLOAT_RANDOM_EB_GT_SB:
                eb = rng.random_int(3, 18)
                sb = rng.random_int(2, eb - 1)
                assert (eb, sb) not in Format_Vector.FIXED_FORMATS_SET

            case _:
                eb, sb = Format_Vector.FIXED_FORMATS[self.kind]

        return Format(eb, sb)


class Float_Vector:
    def __init__(self, kind, is_negative, iteration):
        assert isinstance(kind, Float_Test_Vector)
        assert isinstance(is_negative, bool)
        assert isinstance(iteration, int) and iteration >= 1
        self.kind        = kind
        self.is_negative = is_negative
        self.iteration   = iteration

    def to_json(self):
        return {"kind"      : self.kind.name,
                "negative"  : self.is_negative,
                "iteration" : self.iteration}

    @classmethod
    def from_json(cls, data):
        assert isinstance(data, dict)
        return Float_Vector(Float_Test_Vector[data["kind"]],
                            data["negative"],
                            data["iteration"])

    def tag(self):
        tag = "-" if self.is_negative else "+"
        tag += self.kind.name
        if self.iteration > 1:
            tag += "(%u)" % self.iteration
        return tag

    def mk_float(self, base_rh, fmt):
        assert isinstance(base_rh, Random_Hierarchy)
        assert isinstance(fmt, Format)

        rng = base_rh.extend(self.tag()).rng()

        rv = MPF(fmt.eb, fmt.sb)

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
                boundary_q = Rational(int_boundary(rv))
                if max_q >= boundary_q:
                    rv.from_rational(RM_RNE, boundary_q)
                    assert rv.to_rational() == boundary_q
                else:
                    return None
            case Float_Test_Vector.RANDOM_INTEGRAL_GT_TWO:
                min_int = 3
                max_int = int_boundary(rv) - 1
                if min_int <= max_int:
                    rnd_int = Rational(rng.random_int(min_int, max_int))
                    rv.from_rational(RM_RNE, rnd_int)
                    assert rv.to_rational() == rnd_int, \
                        "%s: cannot represent %s [-> %s]" % (fmt,
                                                             rnd_int,
                                                             rv.to_rational())
                else:
                    return None
            case Float_Test_Vector.RANDOM_GT_INT_BOUNDARY:
                boundary_q = Rational(int_boundary(rv))
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


def mk_float_vectors(iterations, full_spectrum):
    assert isinstance(iterations, int) and iterations >= 1
    assert isinstance(full_spectrum, bool)

    if full_spectrum:
        kind_pool = list(Float_Test_Vector)
        sign_pool = [False, True]
    else:
        kind_pool = [Float_Test_Vector.ZERO,
                     Float_Test_Vector.RANDOM_NORMAL_GE_TWO,
                     Float_Test_Vector.REFERENCE]
        sign_pool = [False]

    rv = []
    for kind in kind_pool:
        for sign in sign_pool:
            if kind in FLOAT_TEST_VECTOR_WITH_ITERATIONS:
                required_iterations = iterations
            else:
                required_iterations = 1
            for iteration in range(required_iterations):
                vec = Float_Vector(kind        = kind,
                                   is_negative = sign,
                                   iteration   = iteration + 1)
                rv.append(vec)

    return rv


def mk_format_vectors(iterations, full_spectrum):
    assert isinstance(iterations, int) and iterations >= 1
    assert isinstance(full_spectrum, bool)

    if full_spectrum:
        kinds_pool = list(Format_Test_Vector)
    else:
        kinds_pool = [Format_Test_Vector.FLOAT32,
                      Format_Test_Vector.FLOAT_RANDOM_EB_LT_SB]

    rv = []
    for kind in kinds_pool:
        if kind in FORMAT_TEST_VECTOR_WITH_ITERATIONS:
            required_iterations = iterations
        else:
            required_iterations = 1
        for iteration in range(required_iterations):
            vec = Format_Vector(kind      = kind,
                                iteration = iteration + 1)
            rv.append(vec)
    return rv


def mk_interleaved_fp_vectors(base_rh,
                              fp_inputs,
                              fmt_iterations,
                              input_iterations,
                              full_spectrum):
    assert isinstance(base_rh, Random_Hierarchy)
    assert isinstance(fp_inputs, int) and 1 <= fp_inputs <= 3
    assert isinstance(fmt_iterations, int) and fmt_iterations >= 1
    assert isinstance(input_iterations, int) and input_iterations >= 1
    assert isinstance(full_spectrum, bool)

    def build_base(n):
        assert 1 <= n <= 3
        if n == 1:
            for vec in mk_float_vectors(input_iterations, full_spectrum):
                yield [vec]
        else:
            for base in build_base(n - 1):
                for vec in mk_float_vectors(input_iterations, full_spectrum):
                    yield base + [vec]

    rh_arg = [base_rh.extend("arg1"),
              base_rh.extend("arg2"),
              base_rh.extend("arg3")]

    bitvectors = set()

    for args in build_base(fp_inputs):
        # This makes the random formats be different for each set of
        # float arguments. Picking one random format and fully testing
        # it is not what we want, the point of random formats is that
        # we want to broadly test them.
        rh_fmt = base_rh.extend("fmt_for_" +
                                ".".join(vec.tag() for vec in args))

        for fmt_vec in mk_format_vectors(fmt_iterations, full_spectrum):
            fmt   = fmt_vec.mk_format(rh_fmt)
            flt   = []
            valid = True
            for n_arg in range(fp_inputs):
                if args[n_arg].kind == Float_Test_Vector.REFERENCE:
                    if (n_arg == 0 or
                        (args[n_arg - 1].kind not in
                         FLOAT_TEST_VECTOR_WITH_ITERATIONS and
                         args[n_arg - 1].kind != Float_Test_Vector.REFERENCE)):
                        valid = False
                    flt_arg = None
                else:
                    flt_arg = args[n_arg].mk_float(rh_arg[n_arg], fmt)
                    if flt_arg is None:
                        valid = False
                flt.append(flt_arg)
            if not valid:
                continue
            uid = tuple([(fmt.eb, fmt.sb)] +
                        [arg.bv if arg is not None else None
                         for arg in flt])
            if uid in bitvectors:
                continue
            bitvectors.add(uid)
            yield {
                "fmt" : {"vec" : fmt_vec.to_json(),
                         "eb"  : fmt.eb,
                         "sb"  : fmt.sb},
                "arg" : [{"vec" : args[n_arg].to_json(),
                          "bv"  : (None
                                   if flt[n_arg] is None
                                   else flt[n_arg].bv)}
                         for n_arg in range(fp_inputs)]
            }


def load_vectors(file_name, op):
    assert os.path.isfile(file_name)
    assert isinstance(op, Float_Operation)

    rv = []
    with open(file_name, "r", encoding="UTF-8") as fd:
        for vector in json.load(fd):
            item = {
                "op" : op,
                "fmt" : {
                    "vec" : Format_Vector.from_json(vector["fmt"]["vec"]),
                    "fmt" : Format(vector["fmt"]["eb"],
                                   vector["fmt"]["sb"])
                },
                "arg" : [
                    {"vec" : Float_Vector.from_json(vector["arg"][n]["vec"]),
                     "flt" : (MPF(vector["fmt"]["eb"],
                                  vector["fmt"]["sb"],
                                  vector["arg"][n]["bv"])
                              if vector["arg"][n]["bv"] is not None
                              else None)}
                    for n in range(len(vector["arg"]))
                ]
            }
            rv.append(item)
    return rv


def sanity_test():
    rh = Random_Hierarchy()

    for x in mk_format_vectors(1, False):
        print(x.tag())

    print()
    for x in mk_float_vectors(1, False):
        print(x.tag())

    print()
    count = 0
    for vector in mk_interleaved_fp_vectors(base_rh = rh,
                                            fp_inputs = 3,
                                            fmt_iterations = 1,
                                            input_iterations = 1,
                                            full_spectrum = False):
        count += 1
        print(vector["fmt"][1],
              vector["arg"][0][0].tag(),
              vector["arg"][1][0].tag(),
              vector["arg"][2][0].tag())
    print("total = %u" % count)


if __name__ == "__main__":
    sanity_test()
