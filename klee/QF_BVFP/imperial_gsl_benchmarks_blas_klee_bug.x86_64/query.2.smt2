(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_gsl_benchmarks_blas_klee_bug.x86_64/query.2.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun a_ackermann!0 () (_ BitVec 64))
(assert
 (not (fp.isNaN ((_ to_fp 11 53) a_ackermann!0))))
(assert
 (let ((?x14 (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ackermann!0) ((_ to_fp 11 53) (_ bv4607182418800017408 64)))))
 (not (fp.eq ?x14 ((_ to_fp 11 53) (_ bv0 64))))))
(assert
 (let ((?x14 (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ackermann!0) ((_ to_fp 11 53) (_ bv4607182418800017408 64)))))
(let ((?x22 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) (_ bv0 64)) (fp.mul roundNearestTiesToEven ?x14 ((_ to_fp 11 53) (_ bv4652104065864433664 64))))))
(let ((?x28 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x22 ((_ to_fp 11 53) (_ bv4638321995473517281 64))) ((_ to_fp 11 53) (_ bv4638919777955306537 64)))))
(not (not (fp.eq ?x28 ((_ to_fp 11 53) (_ bv4645177318531305308 64)))))))))
(check-sat)
(exit)
