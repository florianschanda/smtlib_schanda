(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_interpolation2.x86_64/query.13.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float0 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.geq ?x19 ((_ to_fp 8 24) (_ bv1084227584 32)))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.leq ?x19 ((_ to_fp 8 24) (_ bv1133903872 32)))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.gt ?x19 ((_ to_fp 8 24) (_ bv1092616192 32)))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.gt ?x19 ((_ to_fp 8 24) (_ bv1094713344 32)))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.gt ?x19 ((_ to_fp 8 24) (_ bv1106247680 32)))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (not (fp.isNaN ?x19))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (not (fp.gt ?x19 ((_ to_fp 8 24) (_ bv1125515264 32))))))))
(assert
 (not false))
(check-sat)
(exit)
