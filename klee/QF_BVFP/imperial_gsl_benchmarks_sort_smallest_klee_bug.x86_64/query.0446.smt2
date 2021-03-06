(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_gsl_benchmarks_sort_smallest_klee_bug.x86_64/query.0446.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun x_ackermann!1 () (_ BitVec 64))
(declare-fun x_ackermann!0 () (_ BitVec 64))
(declare-fun x_ackermann!2 () (_ BitVec 64))
(declare-fun x_ackermann!3 () (_ BitVec 64))
(declare-fun x_ackermann!4 () (_ BitVec 64))
(declare-fun x_ackermann!5 () (_ BitVec 64))
(assert
 (let ((?x15 ((_ to_fp 11 53) x_ackermann!1)))
 (let (($x16 (fp.isNaN ?x15)))
 (or (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!0)) $x16) (fp.lt ((_ to_fp 11 53) x_ackermann!0) ?x15)))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!2))))
(assert
 (let ((?x23 ((_ to_fp 11 53) x_ackermann!3)))
 (let ((?x13 ((_ to_fp 11 53) x_ackermann!0)))
 (fp.gt ?x13 ?x23))))
(assert
 (let (($x28 (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!4)) (fp.isNaN ((_ to_fp 11 53) x_ackermann!2)))))
 (or $x28 (fp.lt ((_ to_fp 11 53) x_ackermann!4) ((_ to_fp 11 53) x_ackermann!2)))))
(assert
 (let ((?x20 ((_ to_fp 11 53) x_ackermann!2)))
 (let ((?x31 ((_ to_fp 11 53) x_ackermann!5)))
 (fp.gt ?x31 ?x20))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!5))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!2))))
(assert
 (let ((?x15 ((_ to_fp 11 53) x_ackermann!1)))
 (let (($x16 (fp.isNaN ?x15)))
 (or (or $x16 (fp.isNaN ((_ to_fp 11 53) x_ackermann!5))) (fp.lt ?x15 ((_ to_fp 11 53) x_ackermann!5))))))
(assert
 (let ((?x20 ((_ to_fp 11 53) x_ackermann!2)))
 (let ((?x15 ((_ to_fp 11 53) x_ackermann!1)))
 (fp.gt ?x15 ?x20))))
(assert
 (not (not (fp.gt ((_ to_fp 11 53) x_ackermann!4) ((_ to_fp 11 53) x_ackermann!0)))))
(check-sat)
(exit)
