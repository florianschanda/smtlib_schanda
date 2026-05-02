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
import zipfile


def unzip(zip_file, target_dir, strip_components):
    assert os.path.isfile(zip_file)
    assert os.path.isdir(target_dir) or not os.path.exists(target_dir)
    assert isinstance(strip_components, int) and strip_components >= 0
    os.makedirs(target_dir, exist_ok = True)
    with zipfile.ZipFile(zip_file, "r") as zfd:
        for member in zfd.namelist():
            name = member.split("/")[strip_components:]
            if not name:
                continue
            if not name[-1]:
                # It's a directory
                continue
            dest_path = os.path.join(target_dir, "/".join(name[:-1]))
            os.makedirs(dest_path, exist_ok = True)
            with zfd.open(member, "r") as fd:
                data = fd.read()
            with open(os.path.join(dest_path, name[-1]), "wb") as fd:
                fd.write(data)
            if (64 << 16) & zfd.getinfo(member).external_attr:
                os.chmod(os.path.join(dest_path, name[-1]), 0o755)
