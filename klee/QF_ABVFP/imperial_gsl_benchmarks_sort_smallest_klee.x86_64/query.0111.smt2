(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_gsl_benchmarks_sort_smallest_klee.x86_64/query.0111.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun x0 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x40 (concat (select x0 (_ bv10 32)) (concat (select x0 (_ bv9 32)) (select x0 (_ bv8 32))))))
 (let ((?x49 (concat (select x0 (_ bv13 32)) (concat (select x0 (_ bv12 32)) (concat (select x0 (_ bv11 32)) ?x40)))))
 (let ((?x56 ((_ to_fp 11 53) (concat (select x0 (_ bv15 32)) (concat (select x0 (_ bv14 32)) ?x49)))))
 (let ((?x15 (concat (select x0 (_ bv34 32)) (concat (select x0 (_ bv33 32)) (select x0 (_ bv32 32))))))
 (let ((?x24 (concat (select x0 (_ bv37 32)) (concat (select x0 (_ bv36 32)) (concat (select x0 (_ bv35 32)) ?x15)))))
 (let ((?x31 ((_ to_fp 11 53) (concat (select x0 (_ bv39 32)) (concat (select x0 (_ bv38 32)) ?x24)))))
 (let (($x32 (fp.isNaN ?x31)))
 (or $x32 (fp.lt ?x31 ?x56))))))))))
(assert
 (let ((?x66 (concat (select x0 (_ bv18 32)) (concat (select x0 (_ bv17 32)) (select x0 (_ bv16 32))))))
 (let ((?x75 (concat (select x0 (_ bv21 32)) (concat (select x0 (_ bv20 32)) (concat (select x0 (_ bv19 32)) ?x66)))))
 (let ((?x82 ((_ to_fp 11 53) (concat (select x0 (_ bv23 32)) (concat (select x0 (_ bv22 32)) ?x75)))))
 (let ((?x15 (concat (select x0 (_ bv34 32)) (concat (select x0 (_ bv33 32)) (select x0 (_ bv32 32))))))
 (let ((?x24 (concat (select x0 (_ bv37 32)) (concat (select x0 (_ bv36 32)) (concat (select x0 (_ bv35 32)) ?x15)))))
 (let ((?x31 ((_ to_fp 11 53) (concat (select x0 (_ bv39 32)) (concat (select x0 (_ bv38 32)) ?x24)))))
 (fp.gt ?x31 ?x82))))))))
(assert
 (let ((?x91 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x100 (concat (select x0 (_ bv5 32)) (concat (select x0 (_ bv4 32)) (concat (select x0 (_ bv3 32)) ?x91)))))
 (let ((?x40 (concat (select x0 (_ bv10 32)) (concat (select x0 (_ bv9 32)) (select x0 (_ bv8 32))))))
 (let ((?x49 (concat (select x0 (_ bv13 32)) (concat (select x0 (_ bv12 32)) (concat (select x0 (_ bv11 32)) ?x40)))))
 (let ((?x56 ((_ to_fp 11 53) (concat (select x0 (_ bv15 32)) (concat (select x0 (_ bv14 32)) ?x49)))))
 (fp.gt ?x56 ((_ to_fp 11 53) (concat (select x0 (_ bv7 32)) (concat (select x0 (_ bv6 32)) ?x100))))))))))
(assert
 (let ((?x40 (concat (select x0 (_ bv10 32)) (concat (select x0 (_ bv9 32)) (select x0 (_ bv8 32))))))
 (let ((?x49 (concat (select x0 (_ bv13 32)) (concat (select x0 (_ bv12 32)) (concat (select x0 (_ bv11 32)) ?x40)))))
 (let ((?x56 ((_ to_fp 11 53) (concat (select x0 (_ bv15 32)) (concat (select x0 (_ bv14 32)) ?x49)))))
 (let ((?x66 (concat (select x0 (_ bv18 32)) (concat (select x0 (_ bv17 32)) (select x0 (_ bv16 32))))))
 (let ((?x75 (concat (select x0 (_ bv21 32)) (concat (select x0 (_ bv20 32)) (concat (select x0 (_ bv19 32)) ?x66)))))
 (let ((?x82 ((_ to_fp 11 53) (concat (select x0 (_ bv23 32)) (concat (select x0 (_ bv22 32)) ?x75)))))
 (not (fp.gt ?x82 ?x56)))))))))
(assert
 (let ((?x91 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x100 (concat (select x0 (_ bv5 32)) (concat (select x0 (_ bv4 32)) (concat (select x0 (_ bv3 32)) ?x91)))))
 (let ((?x66 (concat (select x0 (_ bv18 32)) (concat (select x0 (_ bv17 32)) (select x0 (_ bv16 32))))))
 (let ((?x75 (concat (select x0 (_ bv21 32)) (concat (select x0 (_ bv20 32)) (concat (select x0 (_ bv19 32)) ?x66)))))
 (let ((?x82 ((_ to_fp 11 53) (concat (select x0 (_ bv23 32)) (concat (select x0 (_ bv22 32)) ?x75)))))
 (fp.gt ?x82 ((_ to_fp 11 53) (concat (select x0 (_ bv7 32)) (concat (select x0 (_ bv6 32)) ?x100))))))))))
(assert
 (let ((?x40 (concat (select x0 (_ bv10 32)) (concat (select x0 (_ bv9 32)) (select x0 (_ bv8 32))))))
 (let ((?x49 (concat (select x0 (_ bv13 32)) (concat (select x0 (_ bv12 32)) (concat (select x0 (_ bv11 32)) ?x40)))))
 (let ((?x56 ((_ to_fp 11 53) (concat (select x0 (_ bv15 32)) (concat (select x0 (_ bv14 32)) ?x49)))))
 (not (fp.isNaN ?x56))))))
(assert
 (let ((?x40 (concat (select x0 (_ bv10 32)) (concat (select x0 (_ bv9 32)) (select x0 (_ bv8 32))))))
 (let ((?x49 (concat (select x0 (_ bv13 32)) (concat (select x0 (_ bv12 32)) (concat (select x0 (_ bv11 32)) ?x40)))))
 (let ((?x56 ((_ to_fp 11 53) (concat (select x0 (_ bv15 32)) (concat (select x0 (_ bv14 32)) ?x49)))))
 (let ((?x121 (concat (select x0 (_ bv26 32)) (concat (select x0 (_ bv25 32)) (select x0 (_ bv24 32))))))
 (let ((?x130 (concat (select x0 (_ bv29 32)) (concat (select x0 (_ bv28 32)) (concat (select x0 (_ bv27 32)) ?x121)))))
 (let (($x138 (fp.lt ((_ to_fp 11 53) (concat (select x0 (_ bv31 32)) (concat (select x0 (_ bv30 32)) ?x130))) ?x56)))
 (not $x138))))))))
(assert
 (let ((?x121 (concat (select x0 (_ bv26 32)) (concat (select x0 (_ bv25 32)) (select x0 (_ bv24 32))))))
 (let ((?x130 (concat (select x0 (_ bv29 32)) (concat (select x0 (_ bv28 32)) (concat (select x0 (_ bv27 32)) ?x121)))))
 (let (($x140 (fp.isNaN ((_ to_fp 11 53) (concat (select x0 (_ bv31 32)) (concat (select x0 (_ bv30 32)) ?x130))))))
 (not $x140)))))
(assert
 (let ((?x15 (concat (select x0 (_ bv34 32)) (concat (select x0 (_ bv33 32)) (select x0 (_ bv32 32))))))
(let ((?x24 (concat (select x0 (_ bv37 32)) (concat (select x0 (_ bv36 32)) (concat (select x0 (_ bv35 32)) ?x15)))))
(let ((?x31 ((_ to_fp 11 53) (concat (select x0 (_ bv39 32)) (concat (select x0 (_ bv38 32)) ?x24)))))
(let ((?x149 (concat (select x0 (_ bv42 32)) (concat (select x0 (_ bv41 32)) (select x0 (_ bv40 32))))))
(let ((?x158 (concat (select x0 (_ bv45 32)) (concat (select x0 (_ bv44 32)) (concat (select x0 (_ bv43 32)) ?x149)))))
(let (($x168 (fp.lt ((_ to_fp 11 53) (concat (select x0 (_ bv47 32)) (concat (select x0 (_ bv46 32)) ?x158))) ?x31)))
(let (($x32 (fp.isNaN ?x31)))
(let (($x166 (fp.isNaN ((_ to_fp 11 53) (concat (select x0 (_ bv47 32)) (concat (select x0 (_ bv46 32)) ?x158))))))
(not (or (or $x166 $x32) $x168)))))))))))
(check-sat)
(exit)
