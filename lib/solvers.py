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
import subprocess
import shutil

from abc import ABCMeta, abstractmethod

from lib.util import unzip
from lib.enums import (Solver_Response,
                       Solver_Logic_Change,
                       Dialect)


class Base_Solver(metaclass=ABCMeta):
    TOTAL_ORDER = {}

    def __init__(self, binary, name, version, config=None):
        assert isinstance(binary, str)
        assert isinstance(name, str)
        assert isinstance(version, str)
        assert isinstance(config, str) or config is None
        self.name        = name
        self.version     = version
        self.total_order = self.__total_order(name)
        self.config      = config

        self.binary_path       = binary
        self.options           = []
        self.logic_change      = Solver_Logic_Change.NONE
        self.response_kind     = Solver_Response.SMTLIB
        self.dialect_required  = Dialect.SMTLIB2
        self.dialect_preferred = None

    @classmethod
    def __total_order(cls, name):
        assert isinstance(name, str)
        total_order = Base_Solver.TOTAL_ORDER.get(name, 0)
        Base_Solver.TOTAL_ORDER[name] = total_order + 1
        return total_order

    def uid(self):
        """Unique ID to write into results tables"""
        rv = self.name + "--" + self.version
        if self.config is not None:
            rv += "--" + self.config
        return rv

    def get_install_dir(self):
        if self.config is None:
            return os.path.join(".install",
                                self.name,
                                self.version)
        else:
            return os.path.join(".install",
                                self.name,
                                self.version + "--" + self.config)

    def result_file_name(self):
        return "results.%s.json" % self.uid()

    def ensure_install_dir(self):
        if not os.path.isdir(".install"):
            os.mkdir(".install")

    def binary(self):
        """Return the installed executable file to run the solver"""
        return os.path.join(self.get_install_dir(),
                            self.binary_path)

    def command_line(self, file_name):
        """Create command-line (list) to solve the given file"""
        assert isinstance(file_name, str)
        return [self.binary()] + self.options + [file_name]

    @abstractmethod
    def install(self):
        pass


class Installable_Solver(Base_Solver):
    BINARY = ""
    ZIP    = ".zip"
    TAR_GZ = ".tar.gz"
    TAR_BZ = ".tar.bz"

    def __init__(self, binary, name, version, kind, strip_components=0):
        super().__init__(binary, name, version)
        assert kind in (Installable_Solver.BINARY,
                        Installable_Solver.ZIP,
                        Installable_Solver.TAR_GZ,
                        Installable_Solver.TAR_BZ)
        assert isinstance(strip_components, int) and strip_components >= 0
        self.kind         = kind
        self.archive_file = os.path.join(".install",
                                         "archive.%s%s" % (self.uid(),
                                                           kind))

        match kind:
            case Installable_Solver.BINARY:
                self.strip_components = None
                assert strip_components == 0
            case (Installable_Solver.ZIP |
                  Installable_Solver.TAR_GZ |
                  Installable_Solver.TAR_BZ):
                self.strip_components = strip_components

    @abstractmethod
    def obtain_archive(self):
        pass

    def install(self):
        install_dir = self.get_install_dir()

        self.obtain_archive()

        if os.path.isdir(install_dir):
            return

        print("Installing %s" % self.uid())
        os.makedirs(install_dir, exist_ok = True)

        match self.kind:
            case Installable_Solver.ZIP:
                unzip(zip_file         = self.archive_file,
                      target_dir       = install_dir,
                      strip_components = self.strip_components)
            case Installable_Solver.TAR_GZ:
                cmd = ["tar", "xfz"]
                cmd.append(os.path.abspath(self.archive_file))
                if self.strip_components:
                    cmd.append("--strip-components=%u" % self.strip_components)
                subprocess.run(cmd,
                               encoding = "UTF-8",
                               check    = True,
                               cwd      = install_dir)
            case Installable_Solver.TAR_BZ:
                cmd = ["tar", "xfj"]
                cmd.append(os.path.abspath(self.archive_file))
                if self.strip_components:
                    cmd.append("--strip-components=%u" % self.strip_components)
                subprocess.run(cmd,
                               encoding = "UTF-8",
                               check    = True,
                               cwd      = install_dir)
            case Installable_Solver.BINARY:
                shutil.copyfile(self.archive_file,
                                os.path.join(install_dir, self.binary_path))
                os.chmod(os.path.join(install_dir, self.binary_path),
                         0o755)


class Downloadable_Solver(Installable_Solver):
    def __init__(self, binary, name, version, kind, strip, url):
        super().__init__(binary, name, version, kind, strip)
        assert isinstance(url, str)
        self.url = url

    def obtain_archive(self):
        self.ensure_install_dir()
        if os.path.isfile(self.archive_file):
            return
        print("Downloading %s" % self.url)
        subprocess.run(["wget",
                        "-q",
                        "-O", self.archive_file,
                        self.url],
                       check    = True,
                       encoding = "UTF-8")


class GH_Released_Solver(Downloadable_Solver):
    def __init__(self,
                 binary, name, version, kind, strip,
                 gh_project, gh_tag, gh_file):
        assert isinstance(gh_project, str)
        assert isinstance(gh_tag, str)
        assert isinstance(gh_file, str)
        super().__init__(
            binary  = binary,
            name    = name,
            version = version,
            kind    = kind,
            strip   = strip,
            url     = ("https://github.com/%s/releases/download/%s/%s"
                       % (gh_project, gh_tag, gh_file)))


class CVC4_Official_Release(GH_Released_Solver):
    def __init__(self, version):
        super().__init__(binary     = "cvc4",
                         name       = "CVC4",
                         version    = version,
                         kind       = Installable_Solver.BINARY,
                         strip      = 0,
                         gh_project = "CVC4/CVC4-archived",
                         gh_tag     = version,
                         gh_file    = "cvc4-1.8-x86_64-linux-opt")
        self.options = ["--lang=smt2",
                        "--fp-exp",
                        "--check-models"]


class MathSAT_Official_Release(Downloadable_Solver):
    BASE_URL = "https://mathsat.fbk.eu/release/mathsat-%s-linux-x86_64.tar.gz"

    def __init__(self, version):
        super().__init__(
            binary     = "bin/mathsat",
            name       = "MathSAT",
            version    = version,
            kind       = Installable_Solver.TAR_GZ,
            strip      = 1,
            url        = MathSAT_Official_Release.BASE_URL % version)
        self.dialect_preferred = Dialect.MATHSAT
        self.options = ["-input=smt2",
                        "-theory.fp.to_bv_overflow_mode=1",
                        "-theory.fp.minmax_zero_mode=4"]


class Colibri_1_Official_Release(Downloadable_Solver):
    BASE_URL = ("https://git.frama-c.com/pub/colibri/-/"
                "releases/%s/downloads/bundle-v7")

    def __init__(self, version):
        super().__init__(
            binary     = "colibri",
            name       = "Colibri_1",
            version    = version,
            kind       = Installable_Solver.TAR_BZ,
            strip      = 1,
            url        = Colibri_1_Official_Release.BASE_URL % version)


class Colibri_2_Official_Release(Downloadable_Solver):
    BASE_URL = ("https://git.frama-c.com/pub/colibrics/-/"
                "jobs/artifacts/%s/raw/bin/colibri2?job=generate-static")

    def __init__(self, version):
        super().__init__(
            binary     = "colibri",
            name       = "Colibri_2",
            version    = version,
            kind       = Installable_Solver.BINARY,
            strip      = 0,
            url        = Colibri_2_Official_Release.BASE_URL % version)


class CVC5_Official_Release(GH_Released_Solver):
    def __init__(self, version):
        super().__init__(binary     = "bin/cvc5",
                         name       = "CVC5",
                         version    = version,
                         kind       = Installable_Solver.ZIP,
                         strip      = 1,
                         gh_project = "cvc5/cvc5",
                         gh_tag     = "cvc5-%s" % version,
                         gh_file    = "cvc5-Linux-x86_64-static-gpl.zip")
        self.options = ["--fp-exp",
                        "--check-models"]


class CVC5_Local_Build(Base_Solver):
    def __init__(self, cvc5_version, symfpu_version, mpfr, build):
        assert isinstance(cvc5_version, str)
        assert isinstance(symfpu_version, str)
        assert isinstance(mpfr, bool)
        assert isinstance(build, str)
        super().__init__(binary  = "cvc5",
                         name    = "CVC5",
                         version = "%s_%s" % (cvc5_version, symfpu_version),
                         config  = "mpfr" if mpfr else "no-mpfr")
        self.build = build
        self.options = ["--fp-exp",
                        "--check-models"]

    def install(self):
        install_dir = self.get_install_dir()
        build = os.path.join("builds",
                             "cvc5_%s_%s_%s" % (self.version,
                                                self.config,
                                                self.build))

        if not os.path.isfile(build):
            print("Could not find built binary for %s" % build)
            return

        print("Installing %s" % self.uid())
        os.makedirs(install_dir, exist_ok = True)
        shutil.copyfile(build,
                        os.path.join(install_dir, self.binary_path))
        os.chmod(os.path.join(install_dir, self.binary_path),
                 0o755)


class BitWuzla_Official_Release(GH_Released_Solver):
    def __init__(self, version):
        super().__init__(binary     = "bin/bitwuzla",
                         name       = "BitWuzla",
                         version    = version,
                         kind       = Installable_Solver.ZIP,
                         strip      = 1,
                         gh_project = "bitwuzla/bitwuzla",
                         gh_tag     = version,
                         gh_file    = "Bitwuzla-Linux-x86_64-static.zip")


class Z3_Official_Release(GH_Released_Solver):
    def __init__(self, version):
        super().__init__(binary     = "bin/z3",
                         name       = "Z3",
                         version    = version,
                         kind       = Installable_Solver.ZIP,
                         strip      = 1,
                         gh_project = "Z3Prover/z3",
                         gh_tag     = "z3-%s" % version,
                         gh_file    = "z3-%s-x64-glibc-2.39.zip" % version)
        self.logic_change = Solver_Logic_Change.STRIP


def build_solver_library():
    solvers = []

    solvers.append(CVC4_Official_Release("1.8"))

    solvers.append(CVC5_Official_Release("1.3.3"))
    solvers.append(CVC5_Local_Build("main",
                                    "symfpu-1.1.0-dual-license",
                                    False,
                                    "debug"))
    solvers.append(CVC5_Local_Build("main",
                                    "symfpu-1.2.0-dual-license",
                                    False,
                                    "debug"))

    solvers.append(BitWuzla_Official_Release("0.8.1"))
    solvers.append(BitWuzla_Official_Release("0.9.0"))

    solvers.append(Z3_Official_Release("4.16.0"))

    solvers.append(MathSAT_Official_Release("5.6.16"))
    solvers.append(MathSAT_Official_Release("5.6.17pre1"))
    solvers.append(MathSAT_Official_Release("5.6.17pre2"))
    solvers.append(MathSAT_Official_Release("5.6.17pre3"))

    solvers.append(Colibri_1_Official_Release("2026.04"))

    solvers.append(Colibri_2_Official_Release("0.5"))

    return solvers


def find_solver(solvers, name, version, config=None):
    assert isinstance(solvers, list)
    assert all(isinstance(solver, Base_Solver) for solver in solvers)
    assert isinstance(name, str)
    assert isinstance(version, str)
    assert isinstance(config, str) or config is None

    for solver in solvers:
        if solver.name.lower() != name.lower():
            continue
        if solver.version.lower() != version.lower():
            continue
        if config is None:
            return solver
        if solver.config is None:
            continue
        if solver.config.lower() != config.lower():
            continue
        return solver

    return None
