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

from math import log2, floor


def minimal_ubv(n):
    assert isinstance(n, int) and n >= 0

    if n == 0:
        return 1
    else:
        return floor(log2(n)) + 1


def minimal_sbv(n):
    assert isinstance(n, int)

    if n < 0:
        return minimal_ubv(-n)
    elif n == 0:
        return 1
    else:
        return minimal_ubv(n) + 1


def sanity_test():
    assert minimal_ubv(0) == 1
    assert minimal_ubv(1) == 1
    assert minimal_ubv(2) == 2
    assert minimal_ubv(3) == 2
    assert minimal_ubv(4) == 3
    assert minimal_ubv(127) == 7
    assert minimal_ubv(128) == 8
    assert minimal_ubv(255) == 8

    assert minimal_sbv(-1) == 1
    assert minimal_sbv(0) == 1
    assert minimal_sbv(1) == 2
    assert minimal_sbv(-128) == 8
    assert minimal_sbv(127) == 8


if __name__ == "__main__":
    sanity_test()
