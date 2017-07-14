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
                 col_fmt_fn=None,
                 col_backdrop="Altran2",
                 col_good="AnSecondaryGreen",
                 col_bad="AnSecondaryRed"):
        assert type(title) is str
        assert type(columns) is list

        self.col_backdrop = col_backdrop
        self.col_good     = col_good
        self.col_bad      = col_bad
        self.cat_title    = title
        self.columns      = columns
        self.rows         = []
        if col_fmt_fn is None:
            self.col_fmt_fn = lambda x: x
        else:
            self.col_fmt_fn = col_fmt_fn

    def add_row(self, title, data, format_fn, coloring, notes={}):
        assert type(title) is str
        assert type(data) is dict
        assert coloring is None or coloring in TikzTable.COLORING_OPTIONS

        row = {"title" : title,
               "data"  : {}}
        for col, item in data.iteritems():
            assert col in self.columns
            txt = format_fn(item)
            if coloring == COL_AWARD_HIGH:
                if item == max(data.itervalues()):
                    txt = "{\color{%s}%s}" % (self.col_good, txt)
            elif coloring == COL_AWARD_LOW:
                if item == min(data.itervalues()):
                    txt = "{\color{%s}%s}" % (self.col_good, txt)
            elif coloring == COL_ERROR:
                if item == 0.0:
                    txt = "{\color{%s}%s}" % (self.col_good, txt)
                else:
                    txt = "{\color{%s}%s}" % (self.col_bad, txt)
            if col in notes:
                txt += "$^%s$" % notes[col]
            row["data"][col] = txt

        self.rows.append(row)

    def start_footer(self):
        pass

    def emit(self):
        def tr_x(x):
            if x == 0:
                return 0.0
            else:
                return 2.5 + float(x - 1) * 1.25

        def tr_y(y):
            return float(-y) * 0.5

        def emit_box(x, y, txt, title=False):
            n_atr = ["anchor=west"]
            #n_atr.append("fill=black!10")
            if title:
                n_atr.append("rotate=45")
            n = r"\node[%s]" % ",".join(n_atr)

            final_x = tr_x(x)
            final_y = tr_y(y)
            if title:
                final_x += 0.25

            n += " at (%.1f, %.1f)" % (final_x, final_y)

            n += " {\small %s};" % txt
            rv.append(n)

        rv = [r"\begin{tikzpicture}"]
        emit_box(0, 0, self.cat_title)
        for col_id, col in enumerate(self.columns):
            emit_box(col_id + 1, 0, self.col_fmt_fn(col), title=True)

        for row_id, row in enumerate(self.rows):
            emit_box(0, row_id + 1, row["title"])
            for col, txt in row["data"].iteritems():
                emit_box(self.columns.index(col) + 1,
                         row_id + 1,
                         txt)
        rv.append(r"\end{tikzpicture}")
        return "\n".join(rv)
