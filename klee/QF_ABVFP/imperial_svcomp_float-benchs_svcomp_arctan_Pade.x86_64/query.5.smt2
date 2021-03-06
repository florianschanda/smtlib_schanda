(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_arctan_Pade.x86_64/query.5.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_double0 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x12 (concat (select symbolic_0_double0 (_ bv1 32)) (select symbolic_0_double0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_double0 (_ bv3 32)) (concat (select symbolic_0_double0 (_ bv2 32)) ?x12))))
 (let ((?x24 (concat (select symbolic_0_double0 (_ bv5 32)) (concat (select symbolic_0_double0 (_ bv4 32)) ?x18))))
 (let ((?x30 (concat (select symbolic_0_double0 (_ bv7 32)) (concat (select symbolic_0_double0 (_ bv6 32)) ?x24))))
 (let ((?x31 ((_ to_fp 11 53) ?x30)))
 (fp.geq ?x31 ((_ to_fp 11 53) (_ bv18442201928238480281 64)))))))))
(assert
 (let ((?x12 (concat (select symbolic_0_double0 (_ bv1 32)) (select symbolic_0_double0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_double0 (_ bv3 32)) (concat (select symbolic_0_double0 (_ bv2 32)) ?x12))))
 (let ((?x24 (concat (select symbolic_0_double0 (_ bv5 32)) (concat (select symbolic_0_double0 (_ bv4 32)) ?x18))))
 (let ((?x30 (concat (select symbolic_0_double0 (_ bv7 32)) (concat (select symbolic_0_double0 (_ bv6 32)) ?x24))))
 (let ((?x31 ((_ to_fp 11 53) ?x30)))
 (fp.leq ?x31 ((_ to_fp 11 53) (_ bv9218829891383704473 64)))))))))
(assert
 (let ((?x12 (concat (select symbolic_0_double0 (_ bv1 32)) (select symbolic_0_double0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_double0 (_ bv3 32)) (concat (select symbolic_0_double0 (_ bv2 32)) ?x12))))
 (let ((?x24 (concat (select symbolic_0_double0 (_ bv5 32)) (concat (select symbolic_0_double0 (_ bv4 32)) ?x18))))
 (let ((?x30 (concat (select symbolic_0_double0 (_ bv7 32)) (concat (select symbolic_0_double0 (_ bv6 32)) ?x24))))
 (let ((?x31 ((_ to_fp 11 53) ?x30)))
 (not (fp.lt ?x31 ((_ to_fp 11 53) (_ bv0 64))))))))))
(assert
 (let ((?x12 (concat (select symbolic_0_double0 (_ bv1 32)) (select symbolic_0_double0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_double0 (_ bv3 32)) (concat (select symbolic_0_double0 (_ bv2 32)) ?x12))))
 (let ((?x24 (concat (select symbolic_0_double0 (_ bv5 32)) (concat (select symbolic_0_double0 (_ bv4 32)) ?x18))))
 (let ((?x30 (concat (select symbolic_0_double0 (_ bv7 32)) (concat (select symbolic_0_double0 (_ bv6 32)) ?x24))))
 (let ((?x31 ((_ to_fp 11 53) ?x30)))
 (not (fp.gt ?x31 ((_ to_fp 11 53) (_ bv4607182418800017408 64))))))))))
(assert
 (let ((?x12 (concat (select symbolic_0_double0 (_ bv1 32)) (select symbolic_0_double0 (_ bv0 32)))))
(let ((?x18 (concat (select symbolic_0_double0 (_ bv3 32)) (concat (select symbolic_0_double0 (_ bv2 32)) ?x12))))
(let ((?x24 (concat (select symbolic_0_double0 (_ bv5 32)) (concat (select symbolic_0_double0 (_ bv4 32)) ?x18))))
(let ((?x30 (concat (select symbolic_0_double0 (_ bv7 32)) (concat (select symbolic_0_double0 (_ bv6 32)) ?x24))))
(let ((?x31 ((_ to_fp 11 53) ?x30)))
(let ((?x47 (fp.mul roundNearestTiesToEven ?x31 ?x31)))
(let ((?x53 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x47 ((_ to_fp 11 53) (_ bv4610785298501913805 64))) ((_ to_fp 11 53) (_ bv4613937818241073152 64)))))
(let ((?x55 (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) (_ bv4607182418800017408 64)) (fp.div roundNearestTiesToEven ?x47 ?x53))))
(let ((?x56 (fp.mul roundNearestTiesToEven ?x31 ?x55)))
(not (and (fp.geq ?x56 ((_ to_fp 11 53) (_ bv13833126011042021769 64))) (fp.leq ?x56 ((_ to_fp 11 53) (_ bv4609753974187245961 64)))))))))))))))
(check-sat)
(exit)
