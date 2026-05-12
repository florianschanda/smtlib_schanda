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
    FLOAT_2_2           = auto()    # 2, 2 (pathological worst case)

    # Random formats
    FLOAT_RANDOM_EB_EQ_SB = auto()    # eb = sb
    FLOAT_RANDOM_EB_LT_SB = auto()    # eb < sb
    FLOAT_RANDOM_EB_GT_SB = auto()    # eb > sb


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
