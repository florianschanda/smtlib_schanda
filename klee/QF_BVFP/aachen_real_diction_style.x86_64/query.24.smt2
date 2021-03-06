(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/aachen_real_diction_style.x86_64/query.24.smt2
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
 (let ((?x13 ((_ to_fp 11 53) roundNearestTiesToEven words_ackermann!0)))
(let ((?x20 (fp.add roundNearestTiesToEven (fp.div roundNearestTiesToEven ?x13 ((_ to_fp 11 53) (_ bv4625759767262920704 64))) (fp.div roundNearestTiesToEven ((_ to_fp 11 53) (_ bv4667547806188175360 64)) ?x13))))
(not (not (fp.lt ?x20 ((_ to_fp 11 53) (_ bv4631389266797133824 64))))))))
(check-sat)
(exit)
