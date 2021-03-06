(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_synthetic_count_klee.x86_64/query.02.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun start0 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun end1 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x15 (concat (select start0 (_ bv2 32)) (concat (select start0 (_ bv1 32)) (select start0 (_ bv0 32))))))
 (let ((?x19 ((_ to_fp 8 24) (concat (select start0 (_ bv3 32)) ?x15))))
 (not (fp.isNaN ?x19)))))
(assert
 (let ((?x27 (concat (select end1 (_ bv2 32)) (concat (select end1 (_ bv1 32)) (select end1 (_ bv0 32))))))
(let ((?x30 ((_ to_fp 8 24) (concat (select end1 (_ bv3 32)) ?x27))))
(let ((?x15 (concat (select start0 (_ bv2 32)) (concat (select start0 (_ bv1 32)) (select start0 (_ bv0 32))))))
(let ((?x19 ((_ to_fp 8 24) (concat (select start0 (_ bv3 32)) ?x15))))
(let (($x42 (and (and (not (fp.isNaN ?x30)) (not (fp.gt ?x19 ?x30))) (not (fp.lt ?x19 ((_ to_fp 8 24) (_ bv1065353216 32)))))))
(let (($x48 (and (not (fp.eq ?x19 ?x30)) (and $x42 (not (fp.gt ?x30 ((_ to_fp 8 24) (_ bv1065353300 32))))))))
(not (not $x48)))))))))
(check-sat)
(exit)
