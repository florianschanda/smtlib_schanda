(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_gsl_benchmarks_vectors_klee_bug.x86_64/query.1.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun temp_ackermann!0 () (_ BitVec 64))
(assert
 (let (($x13 (fp.isNaN (fp.add roundNearestTiesToEven ((_ to_fp 11 53) temp_ackermann!0) ((_ to_fp 11 53) (_ bv4612451630364040888 64))))))
(not (not $x13))))
(check-sat)
(exit)
