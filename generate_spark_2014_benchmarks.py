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

import os
import glob
import argparse
import multiprocessing
import subprocess

# Set this to false to skip cleanup in test directories
DO_CLEANUP = True

# A list of benchmarks that use floating point
FLOAT_ONLY_BENCHMARKS = set([
    'K210-006__anontype1',
    'K719-019__flight_mgr',
    'K720-019__floats',
    'K831-006__cmp',
    'KB04-017__float',
    'KB25-022__exp',
    'KC20-032__succ_pred',
    'KC20-033__in_range',
    'KC22-015__succ_overflow',
    'L402-004__exp',
    'L402-021__float',
    'M122-006__assign',
    'M122-006__assign2',
    'M227-029__flow_records_and_arrays',
    'M422-023__from_int',
    'M603-018__float',
    'M809-005__float_basics',
    'M823-017__fixed_points',
    'M919-035__floating_point',
    'MA16-036__flow_missing_globals',
    'MB01-007__floating_point',
    'MC12-024__flow_crash',
    'MC12-026__overlayed_objects',
    'MC13-026__float_div',
    'MC17-036__gnatVa',
    'N116-016__floating_point',
    'N121-026__nonlinear',
    'N122-021__succ_floats',
    'N127-048__cvc4',
    'N313-022__float_div',
    'N313-022__float_range',
    'N703-010__float_conversion',
    'N709-001__tagged_discr',
    'N709-018__spurious_discr',
    'N917-037__prover_sanity_alt_ergo',
    'N917-037__prover_sanity_cvc4',
    'N917-037__prover_sanity_cvc4_ce',
    'NC01-041__float_range',
    'NC03-013__float_division',
    'NC04-023__float_conversion',
    'NC05-005__float_division',
    'NC06-004__init',
    'O205-003__dynamic_float',
    'O220-024__floats',
    'O224-020__constant_aggr',
    'O227-007__float_double_inconsistency',
    'O303-041__flow_pure_implies_null_global',
    'O325-024__abstract_state',
    'O331-029__float',
    'O401-034__float_pred',
    'O416-002__dyn_pred_rte',
    'O429-046__flow_tasking_cfg',
    'O429-046__flow_tasking_contracts',
    'O430-013__return_unchecked_conversion',
    'O512-022__number_theory',
    'O512-022__robot_navigation_snd',
    'O715-033__level0',
    'O715-033__level1',
    'O715-033__level2',
    'O715-033__level3',
    'O715-033__level4',
    'O810-001__predicate',
    'O826-006__float_exponential',
    'O917-065__unreferenced',
    'OA21-028__failsafe',
    'OA26-022__gnatprove_crash',
    'OB04-007__float_conversion',
    'OB16-021__float_range',
    'OB23-014__float_literal',
    'OC30-005',
    'P201-069__simulink',
    'P310-021__proof_float_remainder',
    'P315-010__float',
    'P615-019__silver',
    'P620-034__float_out_subtype',
    'P816-010__prefix_inline',
    'P825-006__inlined_range',
    'P828-003__annotate',
    'P906-011__exp_division',
    'P909-012__justification',
    'P909-014__numerics',
    'P912-012__float_zero',
    'P912-012__float_zero_numerics',
    'P914-011__expbug',
    'P920-005__inline',
    'PA20-061__flow_variable_constant',
    'PA21-002__floatdiv',
    'PB02-004__inherited_sub',
    'PB16-038__float_intervals',
    'PB16-052__float_invariant',
    'PB28-028__float_bounds',
    'PB29-020__float_bounds',
    'PC05-013__interval_overflow',
    'PC07-014__float_conversion',
    'PC08-035__missing_range_check_on_out_param',
    'Q208-056__no_denorm_on_target',
    'Q313-019_elementary_ce_float',
    'Q328-034__mut_discr',
    'Q424-012_succ_floats_copy_z3',
    'Q607-007__floats',
    'TU__depends_legal',
    'openETCS',
    'prime_numbers',
    'proofinuse__ce',
    'proofinuse__floating_point',
    'proofinuse__lat_long',
    'proofinuse__pi',
    'proofinuse__trigo',
    'spark_book',
    'spark_io',
    'trajectory_computation',
])

def autodetect_spark_testsuite():
    candidate = None
    for p in os.environ["PATH"].split(os.pathsep):
        if os.path.exists(p) and os.path.isdir(p):
            if "gnatprove" in os.listdir(p):
                candidate = p
                break
    if candidate is None:
        return None
    test_dir = os.path.normpath(os.path.join(candidate, "..", "..",
                                             "testsuite", "gnatprove", "tests"))
    if os.path.isdir(test_dir):
        return test_dir
    else:
        return None



def extract_benchmark(test):
    if "record_ddos" in test["dir"]:
        return None
    #if "proofinuse" not in test["dir"]:
    #    return None
    #if "O401-034__float_pred" not in test["dir"]:
    #    return None

    ROOT = os.getcwd()
    os.chdir(test["dir"])
    gpr_files = glob.glob("*.gpr")
    if len(gpr_files) == 0:
        if not os.path.exists("test.adc"):
            with open("test.adc", "w") as fd:
                fd.write("pragma SPARK_Mode (On);\n")
                fd.write("pragma Profile (Ravenscar);\n")
                fd.write("pragma Partition_Elaboration_Policy (Sequential);\n")
        if not os.path.exists("test.gpr"):
            with open("test.gpr", "w") as fd:
                fd.write('project Test is\n')
                fd.write('  package Compiler is\n')
                fd.write('    for Default_Switches ("Ada") use ("-gnatws");\n')
                fd.write('    for Local_Configuration_Pragmas' +
                         ' use "test.adc";\n')
                fd.write('  end Compiler;\n')
                fd.write('end Test;\n')
    with open("bench_w3.conf", "w") as fd:
        fd.write("[main]\n")
        fd.write("magic = 14\n")
        fd.write("memlimit = 0\n")
        fd.write("\n")
        fd.write("[prover]\n")
        fd.write('command = "%s %%f"\n' % test["faker"])
        fd.write('command_steps = "%s --rlimit=%%S %%f"\n' % test["faker"])
        fd.write('driver = "%s"\n' % test["driver"])
        fd.write('name = "Benchmark"\n')
        fd.write('shortcut = "benchmark"\n')
        fd.write('version = "1.0"\n')

    gpr_files = glob.glob("*.gpr")

    if "test.gpr" in gpr_files:
        used_gpr = "test.gpr"
    elif len(gpr_files) == 1:
        used_gpr = gpr_files[0]
    else:
        # Two tests are weird, we can just skip them
        used_gpr = None

    if used_gpr is not None:
        print multiprocessing.current_process().name,\
            os.path.basename(test["dir"])
        cmd = ["gnatprove",
               "-P", used_gpr,
               "--why3-conf=bench_w3.conf",
               "--prover=benchmark",
               "--no-counterexample",
               "--no-axiom-guard",
               "--codepeer=off",
               "-d"]
        if "O401-034__float_pred" in test["dir"]:
            cmd.append("-u")
            cmd.append("safety_pack.adb")
        p = subprocess.Popen(cmd,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.STDOUT)
        stdout, _ = p.communicate()
        #print stdout

    RELEVANT_STUFF = set(["fp.",
                          "Float32",
                          "Float64",
                          "to_fp",
                          "FloatingPoint"])

    for path, dirs, files in os.walk("."):
        for f in files:
            src = os.path.join(path, f)
            dst = os.path.join(ROOT,
                               test["output"],
                               os.path.basename(test["dir"]) + "___" + f)
            dst = dst.replace(" ", "_")
            dst = dst.replace(".why", ".smt2")
            dst += test["suffix"]

            if f.endswith(".smt2"):
                interesting = not test["filter"]
                data = ""
                with open(src, "rU") as fd:
                    for raw_line in fd:
                        line = raw_line.rstrip()
                        if not interesting:
                            for stuff in RELEVANT_STUFF:
                                if stuff in line:
                                    interesting = True
                        data += line + "\n"
                if not data.endswith("(exit)\n"):
                    data += "(exit)\n"

                with open(dst, "w") as fd:
                    fd.write(data)

            elif f.endswith(".why"):
                os.rename(src, dst)

    if DO_CLEANUP:
        p = subprocess.Popen(["git", "clean", "-xdf"],
                             stdout=subprocess.PIPE,
                             stderr=subprocess.STDOUT)
        stdout, _ = p.communicate()
        p = subprocess.Popen(["git", "checkout", "--", "."],
                             stdout=subprocess.PIPE,
                             stderr=subprocess.STDOUT)
        stdout, _ = p.communicate()

    os.chdir(ROOT)

    return None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("prover", choices=["cvc4", "z3", "alt-ergo", "colibri"])
    ap.add_argument("--testsuite",
                    default=autodetect_spark_testsuite(),
                    help="root of the spark 2014 testsuite")
    ap.add_argument("--all",
                    action="store_true",
                    default=False,
                    help="process all benchmarks, not just the canned list")
    ap.add_argument("--no-filter",
                    action="store_true",
                    default=False,
                    help="do not filter non-float benchmarks")
    ap.add_argument("--output", default=None)
    options = ap.parse_args()

    assert os.path.isdir(options.testsuite)

    prover = options.prover
    faker  = "fake_%s" % prover
    if options.output is None:
        if prover == "colibri":
            output = "spark_2014/QF_AUFBVFPNIRA"
        else:
            output = "spark_2014/AUFBVFPDTNIRA"
    else:
        output = options.output
        if not os.path.exists(output):
            os.mkdir(output)
    suffix = {
        "z3"       : "_z3",
        "alt-ergo" : "_altergo",
    }.get(prover, "")

    tests = [{"dir"    : os.path.normpath(os.path.join(options.testsuite,
                                                       d)),
              "prover" : prover,
              "faker"  : faker,
              "driver" : "%s_gnatprove.drv" % prover,
              "output" : output,
              "suffix" : suffix,
              "filter" : not options.no_filter,
              }
             for d in os.listdir(options.testsuite)
             if os.path.isdir(os.path.join(options.testsuite, d)) and
                (options.all or d in FLOAT_ONLY_BENCHMARKS)]

    pool = multiprocessing.Pool()

    for result in pool.imap_unordered(extract_benchmark, tests, 2):
        pass

if __name__ == "__main__":
    main()
