#!/usr/bin/env python
##############################################################################
##                                                                          ##
##                            smtlib_schanda                                ##
##                                                                          ##
##              Copyright (C) 2017, Altran UK Limited                       ##
##                                                                          ##
##  This file is part of smtlib_schanda.                                    ##
##                                                                          ##
##  smtlib_schanda is free software: you can redistribute it and/or modify  ##
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

import argparse
import glob
import multiprocessing
import os
import shutil
import subprocess
import copy

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
    'O312-037__flow_pure_subprograms',
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
    'P405-006__coq_lemma_library',
    'P615-019__silver',
    'P620-034__float_out_subtype',
    'P816-010__prefix_inline',
    'P828-003__annotate',
    'P830-027__flow_variables_in_float',
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
    'Q522-022__codepeer',
    'Q607-007__floats',
    'Q906-010__float_volatile',
    'Q919-067__flow_generics',
    'QA11-003__itp_example',
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

RELEVANT_FLOAT_STUFF = set(["fp.",
                            "Float32",
                            "Float64",
                            "to_fp",
                            "FloatingPoint"])

RELEVANT_BV_STUFF = set(["bv2nat"])

def autodetect_spark_install():
    candidate = None
    for p in os.environ["PATH"].split(os.pathsep):
        if os.path.exists(p) and os.path.isdir(p):
            if "gnatprove" in os.listdir(p):
                candidate = p
                break
    if candidate is None:
        return None
    test_dir = os.path.normpath(os.path.join(candidate, ".."))
    if os.path.isdir(test_dir):
        return test_dir
    else:
        return None

def autodetect_spark_testsuite():
    candidate = autodetect_spark_install()
    if candidate is None:
        return None
    test_dir = os.path.normpath(os.path.join(candidate, "..",
                                             "testsuite", "gnatprove", "tests"))
    if os.path.isdir(test_dir):
        return test_dir
    else:
        return None

def emit_default_gpr(test):
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

def emit_lemmalib_gpr(test):
    lemma_lib_dir = os.path.join(test["spark"], "lib", "gnat")
    assert os.path.isdir(lemma_lib_dir)

    include_dir = os.path.join(test["spark"], "include", "spark")
    assert os.path.isdir(include_dir)

    shutil.copyfile(os.path.join(lemma_lib_dir, "spark_lemmas.gpr"),
                    os.path.join(test["dir"], "spark_lemmas.gpr"))

    for fn in glob.glob(os.path.join(include_dir, "*.ad?")):
        shutil.copyfile(fn, os.path.join(test["dir"], os.path.basename(fn)))

    shutil.copytree(os.path.join(lemma_lib_dir, "proof"),
                    os.path.join(test["dir"], "proof"))

def extract_benchmark(test):
    if "record_ddos" in test["dir"]:
        # Designed to break the tools
        return None
    if "Q510-009__flow_circular_global" in test["dir"]:
        # Currently causes an infinite loop in tools
        return None

    if "alt-ergo" in test["prover"]:
        if "O910-022__concatenation" in test["dir"]:
            # Why3 goes into an infinite loop trying to emit a VC for alt-ergo.
            # Something to do with ite not being supported.
            return None
        if "O901-014__formal_vectors" in test["dir"]:
            # Why3 eats all memory when trying to produce VCs here for
            # alt-ergo. Cause unknown.
            return None

    #if "proofinuse" not in test["dir"]:
    #    return None
    # if "TU__type_invariant__legal" not in test["dir"]:
    #    return None
    # if "O318-021__modular" not in test["dir"]:
    #    return None
    # if "M809-005__float" not in test["dir"]:
    #    return None
    # if "N624-020__perm_rem" not in test["dir"]:
    #    return None

    ROOT = os.getcwd()
    os.chdir(test["dir"])

    env = copy.copy(os.environ)
    extra_env = {}

    if "P405-006__coq_lemma_library" in test["dir"]:
        # This test is important but quite special and needs a custom setup
        emit_lemmalib_gpr(test)
        extra_env["SPARK_LEMMAS_OBJECT_DIR"] = "obj"
        extra_env["SPARK_LEMMAS_BODY_MODE"]  = "On"
        extra_env["SPARK_LEMMAS_INSTALLED"] = "False"
    else:
        emit_default_gpr(test)

    env.update(extra_env)

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
        cmd = ["gnatprove",
               "-j", "2",
               "-P", used_gpr,
               "--why3-conf=bench_w3.conf",
               "--prover=benchmark",
               "--no-counterexample",
               "--no-axiom-guard",
               "--codepeer=off",
               "--debug-save-vcs"]
        if test["ieee"]:
            cmd.append("--assume-ieee")
        if "O401-034__float_pred" in test["dir"]:
            cmd.append("-u")
            cmd.append("safety_pack.adb")
        p = subprocess.Popen(cmd,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.STDOUT,
                             env=env)
        stdout, _ = p.communicate()
        #print stdout

    for path, dirs, files in os.walk("."):
        for f in files:
            if not (f.endswith(".smt2") or f.endswith(".why")):
                continue

            interesting_float = False
            interesting_bv    = False

            src = os.path.join(path, f)
            dst = os.path.join(ROOT,
                               test["output"],
                               os.path.basename(test["dir"]) + "___" + f)
            dst = dst.replace(" ", "_")
            dst = dst.replace(".why", ".smt2")
            dst = dst.replace("_1.smt2", ".smt2")
            dst_root_exists = os.path.isfile(dst)

            # Filtering for Z3 requires looking at the reference VC
            if test["filter"] == "z3bitvec" and dst_root_exists:
                with open(dst, "rU") as fd:
                    for raw_line in fd:
                        for stuff in RELEVANT_BV_STUFF:
                            if stuff in raw_line:
                                interesting_bv = True
                        if interesting_bv:
                            break

            dst += test["suffix"]

            if f.endswith(".smt2"):
                data = ""
                with open(src, "rU") as fd:
                    for raw_line in fd:
                        line = raw_line.rstrip()
                        for stuff in RELEVANT_FLOAT_STUFF:
                            if stuff in line:
                                interesting_float = True
                        data += line + "\n"
                if len(data.strip()) == 0:
                    print test["dir"]
                    print stdout
                    assert False
                if not data.endswith("(exit)\n"):
                    data += "(exit)\n"

                interesting = test["filter"] is None
                interesting |= (test["filter"] == "float" and
                                interesting_float)
                interesting |= (test["filter"] == "z3bitvec" and
                                interesting_bv)

                if interesting and (dst_root_exists or
                                    test["prover"] in ("cvc4", "colibri")):
                    with open(dst, "w") as fd:
                        fd.write(data)

            elif f.endswith(".why") and dst_root_exists:
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

    return os.path.basename(test["dir"])

def extract_with_handler(test):
    try:
        return extract_benchmark(test)
    except Exception as e:
        print test["dir"]
        raise e

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("prover", choices=["cvc4", "cvc4_oldfp",
                                       "z3",
                                       "alt-ergo", "alt-ergo-fp",
                                       "colibri"])
    ap.add_argument("--testsuite",
                    default=autodetect_spark_testsuite(),
                    help="root of the spark 2014 testsuite")
    ap.add_argument("--install",
                    default=autodetect_spark_install(),
                    help="root of the spark 2014 install")
    ap.add_argument("--all",
                    action="store_true",
                    default=False,
                    help="process all benchmarks, not just the canned list")
    ap.add_argument("--filter",
                    choices=[None, "float", "z3bitvec"],
                    default=None,
                    help="only file certain benchmarks")
    ap.add_argument("--single",
                    action="store_true",
                    default=False,
                    help="disable multithreading (for debugging)")
    ap.add_argument("--output", default=None)
    options = ap.parse_args()

    assert os.path.isdir(options.testsuite)

    if options.prover == "cvc4_oldfp":
        prover = "oldfp"
        driver = "cvc4_gnatprove_oldfloat.drv"
        faker  = "fake_cvc4"
    elif options.prover == "alt-ergo-fp":
        prover = options.prover
        driver = "alt_ergo_fp.drv"
        faker  = "fake_alt-ergo"
    else:
        prover = options.prover
        if not options.all and prover == "cvc4":
            driver = "%s_gnatprove_conversions.drv" % prover
        else:
            driver = "%s_gnatprove.drv" % prover
        faker  = "fake_%s" % prover
    if options.output is None:
        if options.all:
            output = "spark_2014_all/ALL"
        else:
            if prover == "colibri":
                output = "spark_2014/QF_AUFBVFPNIRA"
            else:
                output = "spark_2014/AUFBVFPDTNIRA"
    else:
        output = options.output
        if not os.path.exists(output):
            os.mkdir(output)
    suffix = {
        "z3"          : "_z3",
        "alt-ergo"    : "_altergo",
        "oldfp"       : "_oldfp",
        "alt-ergo-fp" : "_altergo_fp"
    }.get(prover, "")

    print "Using driver: %s" % driver

    tests = [{"dir"    : os.path.normpath(os.path.join(options.testsuite,
                                                       d)),
              "spark"  : os.path.normpath(options.install),
              "prover" : prover,
              "faker"  : faker,
              "driver" : driver,
              "output" : output,
              "suffix" : suffix,
              "filter" : options.filter,
              "ieee"   : prover not in ("alt-ergo", "oldfp"),
              }
             for d in os.listdir(options.testsuite)
             if os.path.isdir(os.path.join(options.testsuite, d)) and
                (options.all or d in FLOAT_ONLY_BENCHMARKS)]

    if options.single:
        n = len(tests)
        for result in map(extract_benchmark, tests):
            n -= 1
            print "(%u remaining) %s" % (n, result)
    else:
        pool = multiprocessing.Pool(8)
        n = len(tests)
        for result in pool.imap_unordered(extract_with_handler, tests):
            n -= 1
            print "(%u remaining) %s" % (n, result)

if __name__ == "__main__":
    main()
