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


from enum import Enum, auto


class Float_Test_Vector(Enum):
    ZERO                    = auto()    # 0
    SMALLEST_SUBNORMAL      = auto()
    RANDOM_SUBNORMAL        = auto()
    LARGEST_SUBNORMAL       = auto()
    SMALLEST_NORMAL         = auto()
    RANDOM_NORMAL_LT_ONE    = auto()    # ] smallest_normal .. 1 [
    ONE                     = auto()    # 1
    RANDOM_NORMAL_LT_TWO    = auto()    # ] 1 .. 2 [
    RANDOM_NORMAL_GE_TWO    = auto()    # [ 2 .. int_boundary [
    INT_BOUNDARY            = auto()    # e.g. 2 ** 24
    RANDOM_INTEGRAL_GT_TWO  = auto()    # [ 3 .. int_boundary [ (integral)
    RANDOM_GT_INT_BOUNDARY  = auto()    # ] 2 ** 24 .. INF [
    LARGEST_NORMAL          = auto()    # nextdown(INF)
    INFINITY                = auto()
    NAN                     = auto()
    SQRT_LARGEST_NORMAL     = auto()
    SQRT_SMALLEST_NORMAL    = auto()
    SQRT_SMALLEST_SUBNORMAL = auto()
    RCP_LARGEST_NORMAL      = auto()
    RCP_SMALLEST_NORMAL     = auto()
    RCP_SMALLEST_SUBNORMAL  = auto()

    REFERENCE               = auto()
    # special value that allows us to place code to refer to other
    # parameters


FLOAT_TEST_VECTOR_WITH_ITERATIONS = \
    frozenset([kind
               for kind in Float_Test_Vector
               if "RANDOM" in kind.name])


class Format_Test_Vector(Enum):
    # IEEE-754 formats
    FLOAT16  = auto()
    FLOAT32  = auto()
    FLOAT64  = auto()
    FLOAT128 = auto()

    # Other hardware
    X87_EXTENDED_DOUBLE = auto()    # 15, 79
    BFLOAT16            = auto()    # 8, 8
    TENSORFLOAT32       = auto()    # 8, 11
    AMD_FP24            = auto()    # 7, 17
    PIXAR_PXR24         = auto()    # 8, 16

    # Special formats
    FLOAT8     = auto()    # 3, 5 (plausible ieee looking format)
    FLOAT_2_2  = auto()    # 2, 2 (pathological worst case)

    # Random formats
    FLOAT_RANDOM_EB_EQ_SB = auto()    # eb = sb
    FLOAT_RANDOM_EB_LT_SB = auto()    # eb < sb
    FLOAT_RANDOM_EB_GT_SB = auto()    # eb > sb


FORMAT_TEST_VECTOR_WITH_ITERATIONS = \
    frozenset([kind
               for kind in Format_Test_Vector
               if "RANDOM" in kind.name])


class Float_Operation(Enum):
    ABS               = auto()
    NEG               = auto()
    ADD               = auto()
    SUB               = auto()
    MUL               = auto()
    DIV               = auto()
    FMA               = auto()
    SQRT              = auto()
    REM               = auto()
    ROUND_TO_INTEGRAL = auto()
    MIN               = auto()
    MAX               = auto()
    LEQ               = auto()
    LT                = auto()
    GEQ               = auto()
    GT                = auto()
    EQ                = auto()
    IS_NORMAL         = auto()
    IS_SUBNORMAL      = auto()
    IS_ZERO           = auto()
    IS_INFINITE       = auto()
    IS_NAN            = auto()
    IS_NEGATIVE       = auto()
    IS_POSITIVE       = auto()

    IEEE_TO_FP        = auto()
    FP_TO_FP          = auto()
    REAL_TO_FP        = auto()
    SBV_TO_FP         = auto()
    UBV_TO_FP         = auto()

    FP_TO_UBV         = auto()
    FP_TO_SBV         = auto()
    FP_TO_REAL        = auto()

    def is_rounded(self):
        return self in (Float_Operation.ADD,
                        Float_Operation.SUB,
                        Float_Operation.MUL,
                        Float_Operation.DIV,
                        Float_Operation.FMA,
                        Float_Operation.SQRT,
                        Float_Operation.ROUND_TO_INTEGRAL,
                        Float_Operation.FP_TO_FP,
                        Float_Operation.REAL_TO_FP,
                        Float_Operation.SBV_TO_FP,
                        Float_Operation.UBV_TO_FP,
                        Float_Operation.FP_TO_UBV,
                        Float_Operation.FP_TO_SBV)

    def arity(self):
        if self in (Float_Operation.ABS,
                    Float_Operation.NEG,
                    Float_Operation.SQRT,
                    Float_Operation.ROUND_TO_INTEGRAL,
                    Float_Operation.IS_NORMAL,
                    Float_Operation.IS_SUBNORMAL,
                    Float_Operation.IS_ZERO,
                    Float_Operation.IS_INFINITE,
                    Float_Operation.IS_NAN,
                    Float_Operation.IS_NEGATIVE,
                    Float_Operation.IS_POSITIVE,
                    Float_Operation.IEEE_TO_FP,
                    Float_Operation.FP_TO_FP,
                    Float_Operation.REAL_TO_FP,
                    Float_Operation.SBV_TO_FP,
                    Float_Operation.UBV_TO_FP,
                    Float_Operation.FP_TO_UBV,
                    Float_Operation.FP_TO_SBV,
                    Float_Operation.FP_TO_REAL):
            return 1
        elif self in (Float_Operation.ADD,
                      Float_Operation.SUB,
                      Float_Operation.MUL,
                      Float_Operation.DIV,
                      Float_Operation.REM,
                      Float_Operation.MIN,
                      Float_Operation.MAX,
                      Float_Operation.LEQ,
                      Float_Operation.LT,
                      Float_Operation.GEQ,
                      Float_Operation.GT,
                      Float_Operation.EQ):
            return 2
        else:
            assert self == Float_Operation.FMA
            return 3


class Implementation(Enum):
    PYMPF      = auto()
    NATIVE_SSE = auto()
    NATIVE_X87 = auto()
    MPFR       = auto()
    SOFTFLOAT  = auto()


class Validation(Enum):
    NONE    = auto()
    PARTIAL = auto()
    FULL    = auto()


class Rounding(Enum):
    NEAREST_EVEN     = auto()
    NEAREST_AWAY     = auto()
    TOWARDS_NEGATIVE = auto()
    TOWARDS_POSITIVE = auto()
    TOWARDS_ZERO     = auto()

    def to_smtlib(self):
        match self:
            case Rounding.NEAREST_EVEN:
                return "RNE"
            case Rounding.NEAREST_AWAY:
                return "RNA"
            case Rounding.TOWARDS_NEGATIVE:
                return "RTN"
            case Rounding.TOWARDS_POSITIVE:
                return "RTP"
            case Rounding.TOWARDS_ZERO:
                return "RTZ"
