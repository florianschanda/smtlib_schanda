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


class Solver_Response(Enum):
    SMTLIB  = auto()
    ALTERGO = auto()
    CBMC    = auto()


class Solver_Verdict(Enum):
    NOT_RUN        = auto()
    # No results available at all

    UNSUPPORTED    = auto()
    # Attempted to run, but logic is not supported

    INTERNAL_ERROR = auto()
    # Error inside benchmarking scripts - should never happen

    TIMEOUT        = auto()
    # Limiter killed process due to time-out

    OOM            = auto()
    # Limited killed process due to memory allocation

    SAT            = auto()
    # Solved problem (sat)

    UNSAT          = auto()
    # Solved problem (unsat)

    UNKNOWN        = auto()
    # Could not solve problem for whatever reason (likely quantifiers)

    ERROR          = auto()
    # Solver returned an error

    UNSOUND        = auto()
    # Solver returned the wrong answer


class Solver_Logic_Change(Enum):
    NONE     = auto()
    STRIP    = auto()
    SIMPLIFY = auto()


class Dialect(Enum):
    SMTLIB2 = auto()
    # The default

    MATHSAT = auto()
    # Mathsat did not not support operator chaining, some VCs are
    # re-encoded without that

    SPARK_LEGACY_FP = auto()
    # SMTLIB2, but using the old real-based axiomatisation from Why3
    # before we introduced proper float handling in SPARK

    ALTERGO = auto()
    # The alt-ergo dialect

    ALTERGO_FP = auto()
    # A variant, using their FP encoding

    CBMC = auto()
    # A version of the benchmark in C, so that CBMC can reason about
    # it


class Expectation(Enum):
    UNKNOWN = auto()
    SAT     = auto()
    UNSAT   = auto()
