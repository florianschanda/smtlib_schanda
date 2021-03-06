(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_gsl_benchmarks_statistics_full_sym_klee.x86_64/query.18.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun data_ackermann!0 () (_ BitVec 64))
(declare-fun data_ackermann!1 () (_ BitVec 64))
(declare-fun data_ackermann!2 () (_ BitVec 64))
(declare-fun data_ackermann!3 () (_ BitVec 64))
(declare-fun data_ackermann!4 () (_ BitVec 64))
(assert
 (let ((?x14 ((_ to_fp 11 53) (_ bv4621819117588971520 64))))
 (let ((?x12 ((_ to_fp 11 53) data_ackermann!0)))
 (fp.geq ?x12 ?x14))))
(assert
 (let ((?x17 ((_ to_fp 11 53) (_ bv4626322717216342016 64))))
 (let ((?x12 ((_ to_fp 11 53) data_ackermann!0)))
 (fp.leq ?x12 ?x17))))
(assert
 (let ((?x14 ((_ to_fp 11 53) (_ bv4621819117588971520 64))))
 (let ((?x19 ((_ to_fp 11 53) data_ackermann!1)))
 (fp.geq ?x19 ?x14))))
(assert
 (let ((?x17 ((_ to_fp 11 53) (_ bv4626322717216342016 64))))
 (let ((?x19 ((_ to_fp 11 53) data_ackermann!1)))
 (fp.leq ?x19 ?x17))))
(assert
 (let ((?x14 ((_ to_fp 11 53) (_ bv4621819117588971520 64))))
 (let ((?x22 ((_ to_fp 11 53) data_ackermann!2)))
 (fp.geq ?x22 ?x14))))
(assert
 (let ((?x17 ((_ to_fp 11 53) (_ bv4626322717216342016 64))))
 (let ((?x22 ((_ to_fp 11 53) data_ackermann!2)))
 (fp.leq ?x22 ?x17))))
(assert
 (let ((?x14 ((_ to_fp 11 53) (_ bv4621819117588971520 64))))
 (let ((?x25 ((_ to_fp 11 53) data_ackermann!3)))
 (fp.geq ?x25 ?x14))))
(assert
 (let ((?x17 ((_ to_fp 11 53) (_ bv4626322717216342016 64))))
 (let ((?x25 ((_ to_fp 11 53) data_ackermann!3)))
 (fp.leq ?x25 ?x17))))
(assert
 (let ((?x14 ((_ to_fp 11 53) (_ bv4621819117588971520 64))))
 (let ((?x28 ((_ to_fp 11 53) data_ackermann!4)))
 (fp.geq ?x28 ?x14))))
(assert
 (let ((?x17 ((_ to_fp 11 53) (_ bv4626322717216342016 64))))
 (let ((?x28 ((_ to_fp 11 53) data_ackermann!4)))
 (fp.leq ?x28 ?x17))))
(assert
 (let ((?x17 ((_ to_fp 11 53) (_ bv4626322717216342016 64))))
(let ((?x32 (ite (fp.gt ((_ to_fp 11 53) data_ackermann!1) ((_ to_fp 11 53) data_ackermann!0)) data_ackermann!1 data_ackermann!0)))
(let ((?x35 (ite (fp.gt ((_ to_fp 11 53) data_ackermann!2) ((_ to_fp 11 53) ?x32)) data_ackermann!2 ?x32)))
(let ((?x38 (ite (fp.gt ((_ to_fp 11 53) data_ackermann!3) ((_ to_fp 11 53) ?x35)) data_ackermann!3 ?x35)))
(let ((?x41 (ite (fp.gt ((_ to_fp 11 53) data_ackermann!4) ((_ to_fp 11 53) ?x38)) data_ackermann!4 ?x38)))
(not (and (not (fp.isNaN ((_ to_fp 11 53) ?x41))) (not (fp.gt ((_ to_fp 11 53) ?x41) ?x17))))))))))
(check-sat)
(exit)
