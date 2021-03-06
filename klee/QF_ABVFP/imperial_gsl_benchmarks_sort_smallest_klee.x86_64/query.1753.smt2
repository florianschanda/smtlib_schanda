(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_gsl_benchmarks_sort_smallest_klee.x86_64/query.1753.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun x0 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x39 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x48 (concat (select x0 (_ bv5 32)) (concat (select x0 (_ bv4 32)) (concat (select x0 (_ bv3 32)) ?x39)))))
 (let ((?x55 ((_ to_fp 11 53) (concat (select x0 (_ bv7 32)) (concat (select x0 (_ bv6 32)) ?x48)))))
 (let ((?x15 (concat (select x0 (_ bv18 32)) (concat (select x0 (_ bv17 32)) (select x0 (_ bv16 32))))))
 (let ((?x24 (concat (select x0 (_ bv21 32)) (concat (select x0 (_ bv20 32)) (concat (select x0 (_ bv19 32)) ?x15)))))
 (let ((?x31 ((_ to_fp 11 53) (concat (select x0 (_ bv23 32)) (concat (select x0 (_ bv22 32)) ?x24)))))
 (not (fp.gt ?x31 ?x55)))))))))
(assert
 (let ((?x65 (concat (select x0 (_ bv10 32)) (concat (select x0 (_ bv9 32)) (select x0 (_ bv8 32))))))
 (let ((?x74 (concat (select x0 (_ bv13 32)) (concat (select x0 (_ bv12 32)) (concat (select x0 (_ bv11 32)) ?x65)))))
 (let ((?x81 ((_ to_fp 11 53) (concat (select x0 (_ bv15 32)) (concat (select x0 (_ bv14 32)) ?x74)))))
 (let ((?x15 (concat (select x0 (_ bv18 32)) (concat (select x0 (_ bv17 32)) (select x0 (_ bv16 32))))))
 (let ((?x24 (concat (select x0 (_ bv21 32)) (concat (select x0 (_ bv20 32)) (concat (select x0 (_ bv19 32)) ?x15)))))
 (let ((?x31 ((_ to_fp 11 53) (concat (select x0 (_ bv23 32)) (concat (select x0 (_ bv22 32)) ?x24)))))
 (not (fp.gt ?x31 ?x81)))))))))
(assert
 (let ((?x39 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x48 (concat (select x0 (_ bv5 32)) (concat (select x0 (_ bv4 32)) (concat (select x0 (_ bv3 32)) ?x39)))))
 (let ((?x55 ((_ to_fp 11 53) (concat (select x0 (_ bv7 32)) (concat (select x0 (_ bv6 32)) ?x48)))))
 (let ((?x91 (concat (select x0 (_ bv26 32)) (concat (select x0 (_ bv25 32)) (select x0 (_ bv24 32))))))
 (let ((?x100 (concat (select x0 (_ bv29 32)) (concat (select x0 (_ bv28 32)) (concat (select x0 (_ bv27 32)) ?x91)))))
 (let ((?x107 ((_ to_fp 11 53) (concat (select x0 (_ bv31 32)) (concat (select x0 (_ bv30 32)) ?x100)))))
 (or (or (fp.isNaN ?x107) (fp.isNaN ?x55)) (fp.lt ?x107 ?x55)))))))))
(assert
 (let ((?x65 (concat (select x0 (_ bv10 32)) (concat (select x0 (_ bv9 32)) (select x0 (_ bv8 32))))))
 (let ((?x74 (concat (select x0 (_ bv13 32)) (concat (select x0 (_ bv12 32)) (concat (select x0 (_ bv11 32)) ?x65)))))
 (let ((?x81 ((_ to_fp 11 53) (concat (select x0 (_ bv15 32)) (concat (select x0 (_ bv14 32)) ?x74)))))
 (let ((?x91 (concat (select x0 (_ bv26 32)) (concat (select x0 (_ bv25 32)) (select x0 (_ bv24 32))))))
 (let ((?x100 (concat (select x0 (_ bv29 32)) (concat (select x0 (_ bv28 32)) (concat (select x0 (_ bv27 32)) ?x91)))))
 (let ((?x107 ((_ to_fp 11 53) (concat (select x0 (_ bv31 32)) (concat (select x0 (_ bv30 32)) ?x100)))))
 (fp.gt ?x107 ?x81))))))))
(assert
 (let ((?x91 (concat (select x0 (_ bv26 32)) (concat (select x0 (_ bv25 32)) (select x0 (_ bv24 32))))))
 (let ((?x100 (concat (select x0 (_ bv29 32)) (concat (select x0 (_ bv28 32)) (concat (select x0 (_ bv27 32)) ?x91)))))
 (let ((?x107 ((_ to_fp 11 53) (concat (select x0 (_ bv31 32)) (concat (select x0 (_ bv30 32)) ?x100)))))
 (let ((?x121 (concat (select x0 (_ bv34 32)) (concat (select x0 (_ bv33 32)) (select x0 (_ bv32 32))))))
 (let ((?x130 (concat (select x0 (_ bv37 32)) (concat (select x0 (_ bv36 32)) (concat (select x0 (_ bv35 32)) ?x121)))))
 (let ((?x137 ((_ to_fp 11 53) (concat (select x0 (_ bv39 32)) (concat (select x0 (_ bv38 32)) ?x130)))))
 (or (or (fp.isNaN ?x137) (fp.isNaN ?x107)) (fp.lt ?x137 ?x107)))))))))
(assert
 (let ((?x65 (concat (select x0 (_ bv10 32)) (concat (select x0 (_ bv9 32)) (select x0 (_ bv8 32))))))
 (let ((?x74 (concat (select x0 (_ bv13 32)) (concat (select x0 (_ bv12 32)) (concat (select x0 (_ bv11 32)) ?x65)))))
 (let ((?x81 ((_ to_fp 11 53) (concat (select x0 (_ bv15 32)) (concat (select x0 (_ bv14 32)) ?x74)))))
 (let ((?x121 (concat (select x0 (_ bv34 32)) (concat (select x0 (_ bv33 32)) (select x0 (_ bv32 32))))))
 (let ((?x130 (concat (select x0 (_ bv37 32)) (concat (select x0 (_ bv36 32)) (concat (select x0 (_ bv35 32)) ?x121)))))
 (let ((?x137 ((_ to_fp 11 53) (concat (select x0 (_ bv39 32)) (concat (select x0 (_ bv38 32)) ?x130)))))
 (not (fp.gt ?x137 ?x81)))))))))
(assert
 (let ((?x15 (concat (select x0 (_ bv18 32)) (concat (select x0 (_ bv17 32)) (select x0 (_ bv16 32))))))
 (let ((?x24 (concat (select x0 (_ bv21 32)) (concat (select x0 (_ bv20 32)) (concat (select x0 (_ bv19 32)) ?x15)))))
 (let ((?x31 ((_ to_fp 11 53) (concat (select x0 (_ bv23 32)) (concat (select x0 (_ bv22 32)) ?x24)))))
 (let ((?x121 (concat (select x0 (_ bv34 32)) (concat (select x0 (_ bv33 32)) (select x0 (_ bv32 32))))))
 (let ((?x130 (concat (select x0 (_ bv37 32)) (concat (select x0 (_ bv36 32)) (concat (select x0 (_ bv35 32)) ?x121)))))
 (let ((?x137 ((_ to_fp 11 53) (concat (select x0 (_ bv39 32)) (concat (select x0 (_ bv38 32)) ?x130)))))
 (fp.gt ?x137 ?x31))))))))
(assert
 (let ((?x65 (concat (select x0 (_ bv10 32)) (concat (select x0 (_ bv9 32)) (select x0 (_ bv8 32))))))
 (let ((?x74 (concat (select x0 (_ bv13 32)) (concat (select x0 (_ bv12 32)) (concat (select x0 (_ bv11 32)) ?x65)))))
 (let ((?x81 ((_ to_fp 11 53) (concat (select x0 (_ bv15 32)) (concat (select x0 (_ bv14 32)) ?x74)))))
 (let ((?x152 (concat (select x0 (_ bv42 32)) (concat (select x0 (_ bv41 32)) (select x0 (_ bv40 32))))))
 (let ((?x161 (concat (select x0 (_ bv45 32)) (concat (select x0 (_ bv44 32)) (concat (select x0 (_ bv43 32)) ?x152)))))
 (let ((?x168 ((_ to_fp 11 53) (concat (select x0 (_ bv47 32)) (concat (select x0 (_ bv46 32)) ?x161)))))
 (or (or (fp.isNaN ?x168) (fp.isNaN ?x81)) (fp.lt ?x168 ?x81)))))))))
(assert
 (let ((?x121 (concat (select x0 (_ bv34 32)) (concat (select x0 (_ bv33 32)) (select x0 (_ bv32 32))))))
 (let ((?x130 (concat (select x0 (_ bv37 32)) (concat (select x0 (_ bv36 32)) (concat (select x0 (_ bv35 32)) ?x121)))))
 (let ((?x137 ((_ to_fp 11 53) (concat (select x0 (_ bv39 32)) (concat (select x0 (_ bv38 32)) ?x130)))))
 (let ((?x152 (concat (select x0 (_ bv42 32)) (concat (select x0 (_ bv41 32)) (select x0 (_ bv40 32))))))
 (let ((?x161 (concat (select x0 (_ bv45 32)) (concat (select x0 (_ bv44 32)) (concat (select x0 (_ bv43 32)) ?x152)))))
 (let ((?x168 ((_ to_fp 11 53) (concat (select x0 (_ bv47 32)) (concat (select x0 (_ bv46 32)) ?x161)))))
 (not (fp.gt ?x168 ?x137)))))))))
(assert
 (let ((?x15 (concat (select x0 (_ bv18 32)) (concat (select x0 (_ bv17 32)) (select x0 (_ bv16 32))))))
 (let ((?x24 (concat (select x0 (_ bv21 32)) (concat (select x0 (_ bv20 32)) (concat (select x0 (_ bv19 32)) ?x15)))))
 (let ((?x31 ((_ to_fp 11 53) (concat (select x0 (_ bv23 32)) (concat (select x0 (_ bv22 32)) ?x24)))))
 (let ((?x152 (concat (select x0 (_ bv42 32)) (concat (select x0 (_ bv41 32)) (select x0 (_ bv40 32))))))
 (let ((?x161 (concat (select x0 (_ bv45 32)) (concat (select x0 (_ bv44 32)) (concat (select x0 (_ bv43 32)) ?x152)))))
 (let ((?x168 ((_ to_fp 11 53) (concat (select x0 (_ bv47 32)) (concat (select x0 (_ bv46 32)) ?x161)))))
 (fp.gt ?x168 ?x31))))))))
(assert
 (let ((?x39 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x48 (concat (select x0 (_ bv5 32)) (concat (select x0 (_ bv4 32)) (concat (select x0 (_ bv3 32)) ?x39)))))
 (let ((?x55 ((_ to_fp 11 53) (concat (select x0 (_ bv7 32)) (concat (select x0 (_ bv6 32)) ?x48)))))
 (let ((?x65 (concat (select x0 (_ bv10 32)) (concat (select x0 (_ bv9 32)) (select x0 (_ bv8 32))))))
 (let ((?x74 (concat (select x0 (_ bv13 32)) (concat (select x0 (_ bv12 32)) (concat (select x0 (_ bv11 32)) ?x65)))))
 (let ((?x81 ((_ to_fp 11 53) (concat (select x0 (_ bv15 32)) (concat (select x0 (_ bv14 32)) ?x74)))))
 (not (fp.gt ?x81 ?x55)))))))))
(assert
 (let ((?x152 (concat (select x0 (_ bv42 32)) (concat (select x0 (_ bv41 32)) (select x0 (_ bv40 32))))))
(let ((?x161 (concat (select x0 (_ bv45 32)) (concat (select x0 (_ bv44 32)) (concat (select x0 (_ bv43 32)) ?x152)))))
(let ((?x168 ((_ to_fp 11 53) (concat (select x0 (_ bv47 32)) (concat (select x0 (_ bv46 32)) ?x161)))))
(let ((?x15 (concat (select x0 (_ bv18 32)) (concat (select x0 (_ bv17 32)) (select x0 (_ bv16 32))))))
(let ((?x24 (concat (select x0 (_ bv21 32)) (concat (select x0 (_ bv20 32)) (concat (select x0 (_ bv19 32)) ?x15)))))
(let ((?x31 ((_ to_fp 11 53) (concat (select x0 (_ bv23 32)) (concat (select x0 (_ bv22 32)) ?x24)))))
(let (($x184 (and (not (fp.isNaN ?x168)) (or (or (fp.isNaN ?x31) (fp.isNaN ?x168)) (fp.gt ?x31 ?x168)))))
(not (not $x184))))))))))
(check-sat)
(exit)
