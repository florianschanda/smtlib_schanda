(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/aachen_real_diction_style.x86_64/query.20.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun words0 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x16 (concat (select words0 (_ bv2 32)) (concat (select words0 (_ bv1 32)) (select words0 (_ bv0 32))))))
 (let ((?x19 (concat (select words0 (_ bv3 32)) ?x16)))
 (bvslt (_ bv300 32) ?x19))))
(assert
 (let ((?x16 (concat (select words0 (_ bv2 32)) (concat (select words0 (_ bv1 32)) (select words0 (_ bv0 32))))))
 (let ((?x19 (concat (select words0 (_ bv3 32)) ?x16)))
 (bvslt ?x19 (_ bv500 32)))))
(assert
 (let ((?x16 (concat (select words0 (_ bv2 32)) (concat (select words0 (_ bv1 32)) (select words0 (_ bv0 32))))))
(let ((?x19 (concat (select words0 (_ bv3 32)) ?x16)))
(let ((?x25 ((_ to_fp 11 53) roundNearestTiesToEven ?x19)))
(let ((?x32 (fp.add roundNearestTiesToEven (fp.div roundNearestTiesToEven ?x25 ((_ to_fp 11 53) (_ bv4625759767262920704 64))) (fp.div roundNearestTiesToEven ((_ to_fp 11 53) (_ bv4663648937956081664 64)) ?x25))))
(let ((?x36 ((_ to_fp 8 24) roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x32 ((_ to_fp 11 53) (_ bv4600877379321698714 64))))))
(not (= (_ bv4 32) (ite (fp.isNormal ?x36) (_ bv4 32) (_ bv3 32))))))))))
(check-sat)
(exit)
