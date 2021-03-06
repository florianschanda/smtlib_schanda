(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_synthetic_fadd_to_exact_zero_klee_double.x86_64/query.02.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun f0 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun g1 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x15 (concat (select f0 (_ bv2 32)) (concat (select f0 (_ bv1 32)) (select f0 (_ bv0 32))))))
 (let ((?x24 (concat (select f0 (_ bv5 32)) (concat (select f0 (_ bv4 32)) (concat (select f0 (_ bv3 32)) ?x15)))))
 (let (($x32 (fp.isNaN ((_ to_fp 11 53) (concat (select f0 (_ bv7 32)) (concat (select f0 (_ bv6 32)) ?x24))))))
 (not $x32)))))
(assert
 (let ((?x39 (concat (select g1 (_ bv2 32)) (concat (select g1 (_ bv1 32)) (select g1 (_ bv0 32))))))
 (let ((?x45 (concat (select g1 (_ bv5 32)) (concat (select g1 (_ bv4 32)) (concat (select g1 (_ bv3 32)) ?x39)))))
 (let (($x51 (fp.isNaN ((_ to_fp 11 53) (concat (select g1 (_ bv7 32)) (concat (select g1 (_ bv6 32)) ?x45))))))
 (not $x51)))))
(assert
 (let ((?x39 (concat (select g1 (_ bv2 32)) (concat (select g1 (_ bv1 32)) (select g1 (_ bv0 32))))))
(let ((?x45 (concat (select g1 (_ bv5 32)) (concat (select g1 (_ bv4 32)) (concat (select g1 (_ bv3 32)) ?x39)))))
(let ((?x54 (fp.abs ((_ to_fp 11 53) (concat (select g1 (_ bv7 32)) (concat (select g1 (_ bv6 32)) ?x45))))))
(let ((?x15 (concat (select f0 (_ bv2 32)) (concat (select f0 (_ bv1 32)) (select f0 (_ bv0 32))))))
(let ((?x24 (concat (select f0 (_ bv5 32)) (concat (select f0 (_ bv4 32)) (concat (select f0 (_ bv3 32)) ?x15)))))
(let ((?x53 (fp.abs ((_ to_fp 11 53) (concat (select f0 (_ bv7 32)) (concat (select f0 (_ bv6 32)) ?x24))))))
(not (not (fp.eq ?x53 ?x54))))))))))
(check-sat)
(exit)
