(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/aachen_real_gmp_gmp_klee_negate.x86_64/query.13.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun d0 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x15 (concat (select d0 (_ bv2 32)) (concat (select d0 (_ bv1 32)) (select d0 (_ bv0 32))))))
 (let ((?x24 (concat (select d0 (_ bv5 32)) (concat (select d0 (_ bv4 32)) (concat (select d0 (_ bv3 32)) ?x15)))))
 (let ((?x30 (concat (select d0 (_ bv7 32)) (concat (select d0 (_ bv6 32)) ?x24))))
 (let ((?x31 ((_ to_fp 11 53) ?x30)))
 (fp.geq ?x31 ((_ to_fp 11 53) (_ bv4607182418800017408 64))))))))
(assert
 (let ((?x15 (concat (select d0 (_ bv2 32)) (concat (select d0 (_ bv1 32)) (select d0 (_ bv0 32))))))
 (let ((?x24 (concat (select d0 (_ bv5 32)) (concat (select d0 (_ bv4 32)) (concat (select d0 (_ bv3 32)) ?x15)))))
 (let ((?x30 (concat (select d0 (_ bv7 32)) (concat (select d0 (_ bv6 32)) ?x24))))
 (let ((?x31 ((_ to_fp 11 53) ?x30)))
 (fp.leq ?x31 ((_ to_fp 11 53) (_ bv4636737291354636288 64))))))))
(assert
 (let ((?x15 (concat (select d0 (_ bv2 32)) (concat (select d0 (_ bv1 32)) (select d0 (_ bv0 32))))))
(let ((?x24 (concat (select d0 (_ bv5 32)) (concat (select d0 (_ bv4 32)) (concat (select d0 (_ bv3 32)) ?x15)))))
(let ((?x30 (concat (select d0 (_ bv7 32)) (concat (select d0 (_ bv6 32)) ?x24))))
(let ((?x31 ((_ to_fp 11 53) ?x30)))
(let ((?x60 ((_ extract 31 0) ((_ sign_extend 32) (bvsub (_ bv0 32) (ite (fp.lt ?x31 ((_ to_fp 11 53) (_ bv0 64))) (_ bv4294967294 32) (_ bv2 32)))))))
(let ((?x62 ((_ sign_extend 32) ?x60)))
(let ((?x64 (ite (bvslt (_ bv4294967295 32) ?x60) ?x62 (bvsub (_ bv0 64) ?x62))))
(let ((?x49 (bvadd (_ bv18446744073709551553 64) (bvsdiv (bvadd (_ bv3074 64) (bvand (concat (_ bv0 52) ((_ extract 63 52) ?x30)) (_ bv2047 64))) (_ bv64 64)))))
(let ((?x69 (bvsub (_ bv9223372036854775807 64) (concat ((_ extract 57 0) (bvsub ((_ sign_extend 32) ((_ extract 31 0) ?x49)) ?x64)) (_ bv0 6)))))
(not (not (bvult ?x69 (concat ((_ extract 57 0) ?x64) (_ bv0 6)))))))))))))))
(check-sat)
(exit)
