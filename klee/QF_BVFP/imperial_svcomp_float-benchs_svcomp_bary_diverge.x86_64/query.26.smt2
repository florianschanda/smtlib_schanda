(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_bary_diverge.x86_64/query.26.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_float_1_ackermann!0 () (_ BitVec 32))
(assert
 (let ((?x8 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!0)))
 (fp.geq ?x8 ((_ to_fp 8 24) (_ bv3212836864 32)))))
(assert
 (let ((?x8 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!0)))
 (fp.leq ?x8 ((_ to_fp 8 24) (_ bv1065353216 32)))))
(assert
 (let ((?x8 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!0)))
(let ((?x25 (fp.mul roundNearestTiesToEven ?x8 ((_ to_fp 8 24) (_ bv1045220557 32)))))
(let ((?x21 (fp.mul roundNearestTiesToEven ?x8 ((_ to_fp 8 24) (_ bv1050253722 32)))))
(let ((?x22 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ((_ to_fp 8 24) (_ bv1056964608 32))) ?x21)))
(let ((?x27 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x22 ?x25) ((_ to_fp 8 24) (_ bv1056964608 32)))))
(let ((?x29 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x27 ?x21) ?x25)))
(not (and (fp.geq ?x29 ((_ to_fp 8 24) (_ bv3231711232 32))) (fp.leq ?x29 ((_ to_fp 8 24) (_ bv1084227584 32))))))))))))
(check-sat)
(exit)
