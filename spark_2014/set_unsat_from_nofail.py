#!/usr/bin/env python

import os

NOFAIL = set([
"M607-025__rev_stack",
"N624-020__perm_occ",
"O227-007__float_double_inconsistency",
"OC08-050__functional_sets",
"P518-021__frame_for_max",
"P518-021__frame_for_swap",
"P519-021__x86_basicmath_small",
"P519-021__x86_basicmath_small_no_loop_fn",
"P519-021__x86_memcpy",
"P725-029__indef_hashed_set",
"PA25-037__bit_set",
"PB16-038__float_intervals",
"PB28-028__float_bounds",
"PB29-020__float_bounds",
"PB30-023__string_literals",
"allocators",
"binary_search",
"binary_search_unconstrained",
"bitwalker",
"database",
"formal_queue",
"heatingsystem",
"intro",
"linear_search",
"longest_common_prefix",
"n_queens",
"natural",
"random",
"search_linked_list",
"segway",
"sparkskein",
"sparksmt__lexer",
"sparksmt__lexer_termination",
"sparksmt__names",
"traffic_light",
"Q120-041_iterable",
"O902-020__private_types",
"PC14-014__functional_annotations",
"Q418-004__bitwise_or",
"pair_insertion_sort",
"Q607-007__floats",
"Q607-015__quantifiers",
])

def process(fn):
    data = ""
    with open(fn, "rU") as fd:
        for raw_line in fd:
            line = raw_line.rstrip("\n")

            if "set-info :status" in line:
                found = False
                for pfx in NOFAIL:
                    if os.path.basename(fn).startswith(pfx):
                        found = True
                        break
                if found:
                    line = "(set-info :status unsat)"
                    print "fixing", fn

            data += line + "\n"
    with open(fn, "w") as fd:
        fd.write(data)

for path, dirs, files in os.walk("AUFBVFPDTNIRA"):
    for f in files:
        if f.endswith(".smt2"):
            process(os.path.join(path, f))
            process(os.path.join(path, f) + "_z3")
