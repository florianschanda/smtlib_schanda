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
import json
import shutil

from enum import Enum, auto

from lib.util import unzip


class Solver_Response(Enum):
    SMTLIB  = auto()
    ALTERGO = auto()
    CBMC    = auto()


class Solver_Verdict(Enum):
    UNSUPPORTED    = auto()
    INTERNAL_ERROR = auto()
    TIMEOUT        = auto()
    OOM            = auto()
    SAT            = auto()
    UNSAT          = auto()
    UNKNOWN        = auto()
    ERROR          = auto()


class Solver_Logic_Change(Enum):
    NONE     = auto()
    STRIP    = auto()
    SIMPLIFY = auto()


class Solver_Config:
    def __init__(self, file_name):
        with open(file_name, "r", encoding="UTF-8") as fd:
            data = json.load(fd)
        self.name             = data["name"]
        self.bin_path         = data["bin"]
        self.versions         = data["versions"]
        self.strip_components = data.get("strip_install_dirs", 0)
        self.logic_change     = Solver_Logic_Change[data.get("logic_change",
                                                             "NONE").upper()]
        self.prefer_dialect   = None
        self.require_dialect  = None
        self.response_kind    = Solver_Response.SMTLIB
        self.options          = data.get("options", [])

    def binary(self, version):
        assert version in self.versions
        return os.path.join(".install",
                            self.name,
                            version,
                            self.bin_path)

    def command_line(self, version, file_name):
        assert version in self.versions
        assert isinstance(file_name, str)
        return [self.binary(version)] + self.options + [file_name]

    def install_all(self):
        for version, vdata in self.versions.items():
            os.makedirs(".install", exist_ok = True)
            ext = os.path.splitext(vdata["url"])[1]
            match ext:
                case ".zip":
                    local_file = os.path.join(".install",
                                              "%s-%s%s" % (self.name,
                                                           version,
                                                           ext))
                case _:
                    local_file = os.path.join(".install",
                                              "%s-%s" % (self.name,
                                                         version))

            local_install = os.path.join(".install", self.name, version)

            if not os.path.isfile(local_file):
                subprocess.run(["wget",
                                vdata["url"],
                                "-O", local_file],
                               check = True)

            if not os.path.isdir(local_install):
                os.makedirs(local_install,
                            exist_ok = True)
                match ext:
                    case ".zip":
                        unzip(local_file, local_install, self.strip_components)
                    case _:
                        shutil.copyfile(local_file,
                                        os.path.join(local_install,
                                                     self.bin_path))
                        os.chmod(os.path.join(local_install,
                                              self.bin_path),
                                 0o755)

            local_bin = os.path.join(local_install, self.bin_path)
            if not os.path.isfile(local_bin):
                print("error: failed to install %s (%s)" % (self.name,
                                                            version))
