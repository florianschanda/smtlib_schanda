(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/aachen_real_diction_style.x86_64/query.12.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun words_ackermann!0 () (_ BitVec 32))
(assert
 (bvslt (_ bv300 32) words_ackermann!0))
(assert
 (bvslt words_ackermann!0 (_ bv500 32)))
(assert
 (let ((?x16 ((_ to_fp 11 53) roundNearestTiesToEven words_ackermann!0)))
(let ((?x21 (fp.sub roundNearestTiesToEven (fp.div roundNearestTiesToEven ((_ to_fp 11 53) (_ bv4667441677737606224 64)) ?x16) (fp.div roundNearestTiesToEven ((_ to_fp 11 53) (_ bv4647895760227755434 64)) ?x16))))
(let ((?x25 ((_ to_fp 8 24) roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x21 ((_ to_fp 11 53) (_ bv13848456716785353488 64))))))
(not (= (_ bv4 32) (ite (fp.isNormal ?x25) (_ bv4 32) (_ bv3 32))))))))
(check-sat)
(exit)
