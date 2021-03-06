(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/aachen_syn_sqr_double-flow.x86_64/query.3.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun f_ackermann!0 () (_ BitVec 64))
(assert
 (not (fp.isNaN ((_ to_fp 11 53) f_ackermann!0))))
(assert
 (let ((?x8 ((_ to_fp 11 53) f_ackermann!0)))
 (let ((?x13 (fp.sqrt roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ?x8))))
 (not (fp.eq ?x13 ((_ to_fp 11 53) (_ bv9218868437227405312 64)))))))
(assert
 (let ((?x8 ((_ to_fp 11 53) f_ackermann!0)))
(let ((?x13 (fp.sqrt roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ?x8))))
(let ((?x28 (fp.mul roundNearestTiesToEven ?x13 ((_ to_fp 11 53) (_ bv4607092346807469998 64)))))
(let ((?x18 (fp.abs ?x8)))
(let (($x24 (or (fp.isNaN (fp.mul roundNearestTiesToEven ?x18 ((_ to_fp 11 53) (_ bv4607092346807469998 64)))) (fp.isNaN ?x13))))
(let (($x26 (or $x24 (fp.gt (fp.mul roundNearestTiesToEven ?x18 ((_ to_fp 11 53) (_ bv4607092346807469998 64))) ?x13))))
(not (or $x26 (or (or (fp.isNaN ?x18) (fp.isNaN ?x28)) (fp.lt ?x18 ?x28)))))))))))
(check-sat)
(exit)
