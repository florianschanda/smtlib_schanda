(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.012.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_1_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(assert
 (let ((?x13 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x11 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!2)))
 (fp.geq ?x11 ?x13))))
(assert
 (let ((?x11 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!2)))
 (fp.leq ?x11 ((_ to_fp 8 24) (_ bv1098907648 32)))))
(assert
 (let ((?x11 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!2)))
 (let ((?x21 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv2147483648 32)) ?x11)))
 (let ((?x13 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_ackermann!3)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x23 ?x13)))
 (or (fp.isNaN ?x21) (fp.gt ?x24 ?x21))))))))
(assert
 (let ((?x13 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_ackermann!3)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x23 ?x13)))
 (not (fp.isNaN ?x24))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_1_ackermann!2))))
(assert
 (let ((?x11 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!2)))
 (let ((?x13 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_ackermann!3)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x23 ?x13)))
 (not (fp.lt ?x24 ?x11)))))))
(assert
 (let ((?x33 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!1)))
 (fp.geq ?x33 ((_ to_fp 8 24) (_ bv3271557120 32)))))
(assert
 (let ((?x33 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!1)))
 (fp.leq ?x33 ((_ to_fp 8 24) (_ bv1124073472 32)))))
(assert
 (let ((?x13 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x40 ?x13))))
(assert
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x40 ((_ to_fp 8 24) (_ bv1098907648 32)))))
(assert
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_ackermann!3)))
 (fp.geq ?x23 ((_ to_fp 8 24) (_ bv3271557120 32)))))
(assert
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_ackermann!3)))
 (fp.leq ?x23 ((_ to_fp 8 24) (_ bv1124073472 32)))))
(assert
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
(let ((?x49 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv2147483648 32)) ?x40)))
(let ((?x11 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!2)))
(let ((?x13 ((_ to_fp 8 24) (_ bv0 32))))
(let ((?x33 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!1)))
(let ((?x46 (fp.sub roundNearestTiesToEven ?x33 (fp.add roundNearestTiesToEven ?x13 ?x11))))
(let (($x55 (and (and (not (fp.isNaN ?x46)) (not (fp.isNaN ?x49))) (not (fp.gt ?x46 ?x49)))))
(not $x55)))))))))
(check-sat)
(exit)
