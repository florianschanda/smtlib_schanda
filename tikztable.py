#!/usr/bin/env python
##############################################################################
##                                                                          ##
##                            smtlib_schanda                                ##
##                                                                          ##
##              Copyright (C) 2017, Altran UK Limited                       ##
##                                                                          ##
##  This file is part of smtlib_schamda.                                    ##
##                                                                          ##
##  smtlib_schamda is free software: you can redistribute it and/or modify  ##
##  it under the terms of the GNU General Public License as published by    ##
##  the Free Software Foundation, either version 3 of the License, or       ##
##  (at your option) any later version.                                     ##
##                                                                          ##
##  smtlib_schanda is distributed in the hope that it will be useful,       ##
##  but WITHOUT ANY WARRANTY; without even the implied warranty of          ##
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the           ##
##  GNU General Public License for more details.                            ##
##                                                                          ##
##  You should have received a copy of the GNU General Public License       ##
##  along with smtlib_schanda. If not, see <http://www.gnu.org/licenses/>.  ##
##                                                                          ##
##############################################################################

COL_AWARD_HIGH = "col_award_high"
COL_AWARD_LOW  = "col_award_low"
COL_ERROR      = "col_error"

class TikzTable(object):
    COLORING_OPTIONS = (COL_AWARD_HIGH, COL_AWARD_LOW, COL_ERROR)

    def __init__(self, title, columns,
                 noncomp=[],
                 col_fmt_fn=None,
                 col_rule="Altran2",
                 fmt_good=None,
                 fmt_bad=None,
                 transposed=False):
        assert type(title) is str
        assert type(columns) is list

        self.col_rule  = col_rule
        if fmt_good is None:
            self.fmt_good = lambda x: "{\\color{AnSecondaryGreen}%s}" % x
        else:
            self.fmt_good = fmt_good
        if fmt_bad is None:
            self.fmt_bad = lambda x: "{\\color{AnSecondaryRed}%s}" % x
        else:
            self.fmt_bad = fmt_bad
        self.cat_title = title
        self.columns   = columns
        self.rows      = []
        self.competing = {c: c not in noncomp
                          for c in columns}
        self.transposed = transposed

        if col_fmt_fn is None:
            self.col_fmt_fn = lambda x: x
        else:
            self.col_fmt_fn = col_fmt_fn

    def add_row(self, title, data, format_fn, coloring, notes={}):
        assert type(title) is str
        assert type(data) is dict
        assert coloring is None or coloring in TikzTable.COLORING_OPTIONS

        competing_data = {col : item
                          for col, item in data.iteritems()
                          if self.competing[col]}

        row = {"kind" : "row",
               "title" : title,
               "data"  : {}}
        for col, item in data.iteritems():
            assert col in self.columns
            txt = format_fn(item)
            if not self.competing[col]:
                txt = "{\color{black!33}%s}" % txt
            elif coloring == COL_ERROR:
                if item == 0.0:
                    txt = self.fmt_good(txt)
                else:
                    txt = self.fmt_bad(txt)
            elif coloring == COL_AWARD_HIGH:
                if item == max(competing_data.itervalues()):
                    txt = self.fmt_good(txt)
            elif coloring == COL_AWARD_LOW:
                if item == min(competing_data.itervalues()):
                    txt = self.fmt_good(txt)
            if col in notes:
                txt += "$^%s$" % notes[col]
            row["data"][col] = txt

        self.rows.append(row)

    def start_footer(self):
        self.rows.append({"kind" : "rule"})

    def emit(self):
        def tr_x(x):
            if x == 0:
                return 0.0
            else:
                return 2.0 + float(x - 1) * 0.9

        def tr_y(y):
            return float(-y) * 0.35

        def emit_box(x, y, txt):
            if self.transposed:
                x, y = y, x

            title = (y == 0) and x > 0
            n_atr = ["anchor=west"]
            # n_atr.append("fill=black!10")
            if title:
                n_atr.append("rotate=65")
            n = r"\node[%s]" % ",".join(n_atr)

            final_x = tr_x(x)
            final_y = tr_y(y)
            if title:
                final_x += 0.25

            n += " at (%.3f, %.3f)" % (final_x, final_y)

            n += " {\\tiny %s};" % txt
            rv.append(n)

        def emit_hrule(after_y):
            if self.transposed:
                width = len(self.rows)
            else:
                width = len(self.columns)

            r = r"\draw[%s,thick]" % self.col_rule

            y = (tr_y(after_y) + tr_y(after_y + 1)) / 2.0 + 0.05
            r += " (%.3f, %.3f)" % (tr_x(0), y)
            r += " -- (%.3f, %.3f)" % (tr_x(width + 1), y)
            r += ";"

            rv.append(r)

        rv = [r"\begin{tikzpicture}"]
        emit_box(0, 0, self.cat_title)
        for col_id, col in enumerate(self.columns):
            emit_box(col_id + 1, 0, self.col_fmt_fn(col))
        emit_hrule(0)

        row_id = 0
        for row in self.rows:
            if row["kind"] == "row":
                row_id += 1
                emit_box(0, row_id, row["title"])
                for col, txt in row["data"].iteritems():
                    emit_box(self.columns.index(col) + 1,
                             row_id,
                             txt)
            elif row["kind"] == "rule":
                emit_hrule(row_id)

        rv.append(r"\end{tikzpicture}")
        return "\n".join(rv)

    def emit_plain(self, filename):
        tbl = {}
        def put(x, y, txt):
            if self.transposed:
                x, y = y, x
            if y not in tbl:
                tbl[y] = {x: txt}
            else:
                tbl[y][x] = txt

        # Heading
        put(0, 0, self.cat_title)
        for i, txt in enumerate(self.columns):
            put(i+1, 0, self.col_fmt_fn(txt))

        # Rows
        row_id = 0
        for row in self.rows:
            if row["kind"] == "row":
                row_id += 1
                put(0, row_id, row["title"])
                for col, txt in row["data"].iteritems():
                    put(self.columns.index(col) + 1, row_id, txt)

        with open(filename, "w") as fd:
            width = len(tbl[0])
            na   = r"\noalign{\smallskip}"
            rule = r"\hline"

            fd.write("\\begin{tabular}{%s}\n" % ("l" * width))
            fd.write(rule + na + "\n")
            for row_id in xrange(len(tbl)):
                for col_id in xrange(width):
                    if col_id > 0:
                        fd.write(" & ")
                    fd.write(tbl[row_id][col_id])
                fd.write("\\\\\n")
                if row_id == 0:
                    fd.write(na + rule + na + "\n")
            fd.write(rule + "\n")
            fd.write("\\end{tabular}\n")
