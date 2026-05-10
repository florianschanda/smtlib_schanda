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

from math import log2

import gmpy2

from mpf.floats import MPF, RM_RNE
from mpf.rationals import Rational


def mpf_to_mpfr(f):
    assert isinstance(f, MPF)

    if f.isNaN():
        return gmpy2.nan()
    elif f.isInfinite():
        if f.isPositive():
            return gmpy2.inf(1)
        else:
            return gmpy2.inf(-1)
    elif f.isZero():
        if f.isPositive():
            return gmpy2.zero(1)
        else:
            return gmpy2.zero(-1)
    else:
        return gmpy2.mpfr(f.to_python_string())


def mpfr_to_mpf(f):
    ctx = gmpy2.get_context()
    p = ctx.precision
    # emax = ctx.emax - 1
    # emax = (2 ** (w - 1)) - 1
    # emax + 1 = 2 ** (w - 1)
    # ln2(emax + 1) = w - 1
    # w = ln(emax + 1) + 1
    # w = ln(ctx.emax) + 1
    w = log2(ctx.emax) + 1
    assert w.is_integer()
    w = int(w)
    # w = k - p
    # k = w + p
    k = w + p

    eb = k - p
    sb = p

    rv = MPF(eb, sb)
    if gmpy2.is_nan(f):
        rv.set_nan()
    elif gmpy2.is_infinite(f):
        if gmpy2.sign(f) > 0:
            rv.set_infinite(0)
        else:
            rv.set_infinite(1)
    elif gmpy2.is_zero(f):
        if str(f) == "-0.0":
            rv.set_zero(1)
        elif str(f) == "0.0":
            rv.set_zero(0)
        else:
            assert False
    else:
        a, b = f.as_integer_ratio()
        rv.from_rational(RM_RNE, Rational(int(a), int(b)))
        assert mpf_to_mpfr(rv) == f

    return rv
