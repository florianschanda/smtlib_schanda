(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_filter1.x86_64/query.10.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_double_ackermann!1 () (_ BitVec 64))
(declare-fun symbolic_0_double_1_ackermann!0 () (_ BitVec 64))
(declare-fun symbolic_0_double_2_ackermann!2 () (_ BitVec 64))
(assert
 (let ((?x12 ((_ to_fp 11 53) (_ bv13830554455654793216 64))))
 (let ((?x10 ((_ to_fp 11 53) symbolic_0_double_ackermann!1)))
 (fp.geq ?x10 ?x12))))
(assert
 (let ((?x15 ((_ to_fp 11 53) (_ bv4607182418800017408 64))))
 (let ((?x10 ((_ to_fp 11 53) symbolic_0_double_ackermann!1)))
 (fp.leq ?x10 ?x15))))
(assert
 (let ((?x12 ((_ to_fp 11 53) (_ bv13830554455654793216 64))))
 (let ((?x17 ((_ to_fp 11 53) symbolic_0_double_1_ackermann!0)))
 (fp.geq ?x17 ?x12))))
(assert
 (let ((?x15 ((_ to_fp 11 53) (_ bv4607182418800017408 64))))
 (let ((?x17 ((_ to_fp 11 53) symbolic_0_double_1_ackermann!0)))
 (fp.leq ?x17 ?x15))))
(assert
 (let ((?x12 ((_ to_fp 11 53) (_ bv13830554455654793216 64))))
 (let ((?x20 ((_ to_fp 11 53) symbolic_0_double_2_ackermann!2)))
 (fp.geq ?x20 ?x12))))
(assert
 (let ((?x15 ((_ to_fp 11 53) (_ bv4607182418800017408 64))))
 (let ((?x20 ((_ to_fp 11 53) symbolic_0_double_2_ackermann!2)))
 (fp.leq ?x20 ?x15))))
(assert
 (let ((?x17 ((_ to_fp 11 53) symbolic_0_double_1_ackermann!0)))
(let ((?x20 ((_ to_fp 11 53) symbolic_0_double_2_ackermann!2)))
(let ((?x10 ((_ to_fp 11 53) symbolic_0_double_ackermann!1)))
(let ((?x27 (fp.sub roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 11 53) (_ bv0 64)) ?x10) ((_ to_fp 11 53) (_ bv0 64)))))
(let ((?x31 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x27 ((_ to_fp 11 53) (_ bv4607173411600762667 64))) ?x17)))
(let ((?x33 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven ?x31 ?x10) ((_ to_fp 11 53) (_ bv4607173411600762667 64)))))
(let ((?x35 (fp.sub roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x33 ?x20) ?x17)))
(not (and (fp.geq ?x35 ((_ to_fp 11 53) (_ bv13890095209322119168 64))) (fp.leq ?x35 ((_ to_fp 11 53) (_ bv4666723172467343360 64)))))))))))))
(check-sat)
(exit)
