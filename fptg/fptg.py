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

import sys
import argparse

import mpf.floats
import mpf.rationals

from fptg.enums import Float_Operation, Rounding
from fptg.floats import Context


def main():
    ap = argparse.ArgumentParser()
    options = ap.parse_args()

    ctx = Context()

    a = mpf.floats.MPF(8, 24)
    a.from_rational(mpf.floats.RM_RNE,
                    mpf.rationals.Rational(2))

    b = mpf.floats.MPF(8, 24)
    b.from_rational(mpf.floats.RM_RNE,
                    mpf.rationals.Rational(5))

    c = ctx.perform(op   = Float_Operation.ADD,
                    rm   = Rounding.NEAREST_EVEN,
                    arg1 = a,
                    arg2 = b)

    print(c.to_rational().to_decimal_string())
    print("\n".join(ctx.info_list()))

    ctx = Context()

    a = mpf.floats.MPF(11, 53)
    a.from_rational(mpf.floats.RM_RNE,
                    mpf.rationals.Rational(2))

    b = mpf.floats.MPF(11, 53)
    b.from_rational(mpf.floats.RM_RNE,
                    mpf.rationals.Rational(5))

    c = ctx.perform(op   = Float_Operation.ADD,
                    rm   = Rounding.NEAREST_EVEN,
                    arg1 = a,
                    arg2 = b)

    print(c.to_rational().to_decimal_string())
    print("\n".join(ctx.info_list()))

    return 0


if __name__ == "__main__":
    sys.exit(main())
