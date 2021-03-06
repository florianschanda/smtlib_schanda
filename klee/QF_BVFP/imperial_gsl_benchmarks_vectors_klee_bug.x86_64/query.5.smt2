(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_gsl_benchmarks_vectors_klee_bug.x86_64/query.5.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun temp_ackermann!0 () (_ BitVec 64))
(declare-fun fresh_to_ieee_bv_!1 () (_ BitVec 64))
(declare-fun fresh_to_ieee_bv_!2 () (_ BitVec 64))
(assert
 (let ((?x12 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) temp_ackermann!0) ((_ to_fp 11 53) (_ bv4612451630364040888 64)))))
 (not (fp.isNaN ?x12))))
(assert
 (let ((?x12 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) temp_ackermann!0) ((_ to_fp 11 53) (_ bv4612451630364040888 64)))))
 (= ?x12 ((_ to_fp 11 53) fresh_to_ieee_bv_!1))))
(assert
 (let ((?x31 (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) (_ bv4612451630364040888 64)) (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) (_ bv0 64)) ((_ to_fp 11 53) temp_ackermann!0)))))
 (= ?x31 ((_ to_fp 11 53) fresh_to_ieee_bv_!2))))
(assert
 (let ((?x31 (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) (_ bv4612451630364040888 64)) (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) (_ bv0 64)) ((_ to_fp 11 53) temp_ackermann!0)))))
(let ((?x36 (ite (fp.lt ((_ to_fp 11 53) (_ bv4617957280908501320 64)) ?x31) (_ bv4617957280908501320 64) fresh_to_ieee_bv_!2)))
(let ((?x12 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) temp_ackermann!0) ((_ to_fp 11 53) (_ bv4612451630364040888 64)))))
(let ((?x23 (ite (fp.lt ((_ to_fp 11 53) (_ bv4617957280908501320 64)) ?x12) (_ bv4617957280908501320 64) fresh_to_ieee_bv_!1)))
(let (($x41 (fp.eq ((_ to_fp 11 53) (ite (fp.lt ((_ to_fp 11 53) (_ bv4620209080722186568 64)) ((_ to_fp 11 53) ?x23)) (_ bv4620209080722186568 64) ?x23)) ((_ to_fp 11 53) (ite (fp.lt ((_ to_fp 11 53) (_ bv4620209080722186568 64)) ((_ to_fp 11 53) ?x36)) (_ bv4620209080722186568 64) ?x36)))))
(not $x41)))))))
(check-sat)
(exit)
