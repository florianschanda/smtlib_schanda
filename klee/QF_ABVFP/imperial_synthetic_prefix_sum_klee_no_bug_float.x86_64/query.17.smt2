(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_synthetic_prefix_sum_klee_no_bug_float.x86_64/query.17.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun data_in0 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x15 (concat (select data_in0 (_ bv2 32)) (concat (select data_in0 (_ bv1 32)) (select data_in0 (_ bv0 32))))))
 (let ((?x19 ((_ to_fp 8 24) (concat (select data_in0 (_ bv3 32)) ?x15))))
 (not (fp.isNaN ?x19)))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 (concat (select data_in0 (_ bv2 32)) (concat (select data_in0 (_ bv1 32)) (select data_in0 (_ bv0 32))))))
 (let ((?x19 ((_ to_fp 8 24) (concat (select data_in0 (_ bv3 32)) ?x15))))
 (not (fp.lt ?x19 ?x22))))))
(assert
 (let ((?x32 (concat (select data_in0 (_ bv6 32)) (concat (select data_in0 (_ bv5 32)) (select data_in0 (_ bv4 32))))))
 (let ((?x36 ((_ to_fp 8 24) (concat (select data_in0 (_ bv7 32)) ?x32))))
 (not (fp.isNaN ?x36)))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x32 (concat (select data_in0 (_ bv6 32)) (concat (select data_in0 (_ bv5 32)) (select data_in0 (_ bv4 32))))))
 (let ((?x36 ((_ to_fp 8 24) (concat (select data_in0 (_ bv7 32)) ?x32))))
 (not (fp.lt ?x36 ?x22))))))
(assert
 (let ((?x48 (concat (select data_in0 (_ bv10 32)) (concat (select data_in0 (_ bv9 32)) (select data_in0 (_ bv8 32))))))
 (let ((?x52 ((_ to_fp 8 24) (concat (select data_in0 (_ bv11 32)) ?x48))))
 (not (fp.isNaN ?x52)))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x48 (concat (select data_in0 (_ bv10 32)) (concat (select data_in0 (_ bv9 32)) (select data_in0 (_ bv8 32))))))
 (let ((?x52 ((_ to_fp 8 24) (concat (select data_in0 (_ bv11 32)) ?x48))))
 (not (fp.lt ?x52 ?x22))))))
(assert
 (let ((?x64 (concat (select data_in0 (_ bv14 32)) (concat (select data_in0 (_ bv13 32)) (select data_in0 (_ bv12 32))))))
 (let ((?x68 ((_ to_fp 8 24) (concat (select data_in0 (_ bv15 32)) ?x64))))
 (not (fp.isNaN ?x68)))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x64 (concat (select data_in0 (_ bv14 32)) (concat (select data_in0 (_ bv13 32)) (select data_in0 (_ bv12 32))))))
 (let ((?x68 ((_ to_fp 8 24) (concat (select data_in0 (_ bv15 32)) ?x64))))
 (not (fp.lt ?x68 ?x22))))))
(assert
 (let ((?x32 (concat (select data_in0 (_ bv6 32)) (concat (select data_in0 (_ bv5 32)) (select data_in0 (_ bv4 32))))))
(let ((?x36 ((_ to_fp 8 24) (concat (select data_in0 (_ bv7 32)) ?x32))))
(let ((?x15 (concat (select data_in0 (_ bv2 32)) (concat (select data_in0 (_ bv1 32)) (select data_in0 (_ bv0 32))))))
(let ((?x19 ((_ to_fp 8 24) (concat (select data_in0 (_ bv3 32)) ?x15))))
(let ((?x48 (concat (select data_in0 (_ bv10 32)) (concat (select data_in0 (_ bv9 32)) (select data_in0 (_ bv8 32))))))
(let ((?x52 ((_ to_fp 8 24) (concat (select data_in0 (_ bv11 32)) ?x48))))
(let ((?x75 (fp.add roundNearestTiesToEven ?x52 (fp.add roundNearestTiesToEven ?x19 ?x36))))
(let ((?x64 (concat (select data_in0 (_ bv14 32)) (concat (select data_in0 (_ bv13 32)) (select data_in0 (_ bv12 32))))))
(let ((?x68 ((_ to_fp 8 24) (concat (select data_in0 (_ bv15 32)) ?x64))))
(let ((?x76 (fp.add roundNearestTiesToEven ?x68 ?x75)))
(let (($x84 (and (and (not (fp.isNaN ?x76)) (not (fp.isNaN ?x75))) (not (fp.lt ?x76 ?x75)))))
(not $x84)))))))))))))
(check-sat)
(exit)
