(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/aachen_syn_inf_float.x86_64/query.32.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun f_10 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x15 (concat (select f_10 (_ bv2 32)) (concat (select f_10 (_ bv1 32)) (select f_10 (_ bv0 32))))))
 (not (fp.isNaN ((_ to_fp 8 24) (concat (select f_10 (_ bv3 32)) ?x15))))))
(assert
 (let ((?x15 (concat (select f_10 (_ bv2 32)) (concat (select f_10 (_ bv1 32)) (select f_10 (_ bv0 32))))))
(let ((?x24 ((_ to_fp 11 53) roundNearestTiesToEven (fp.abs ((_ to_fp 8 24) (concat (select f_10 (_ bv3 32)) ?x15))))))
(let ((?x28 ((_ to_fp 8 24) roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x24 ((_ to_fp 11 53) (_ bv4764036703148834816 64))))))
(let ((?x29 (fp.mul roundNearestTiesToEven ?x28 ?x28)))
(let ((?x33 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x29 ?x29) ((_ to_fp 8 24) (_ bv1065353216 32)))))
(not (fp.eq (fp.add roundNearestTiesToEven ?x33 ((_ to_fp 8 24) (_ bv4286578687 32))) ((_ to_fp 8 24) (_ bv2139095040 32))))))))))
(check-sat)
(exit)
