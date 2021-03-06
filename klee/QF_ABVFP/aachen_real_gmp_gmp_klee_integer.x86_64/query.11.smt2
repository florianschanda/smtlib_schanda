(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/aachen_real_gmp_gmp_klee_integer.x86_64/query.11.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun d0 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x15 (concat (select d0 (_ bv2 32)) (concat (select d0 (_ bv1 32)) (select d0 (_ bv0 32))))))
 (let ((?x24 (concat (select d0 (_ bv5 32)) (concat (select d0 (_ bv4 32)) (concat (select d0 (_ bv3 32)) ?x15)))))
 (let ((?x30 (concat (select d0 (_ bv7 32)) (concat (select d0 (_ bv6 32)) ?x24))))
 (fp.lt ((_ to_fp 11 53) ?x30) ((_ to_fp 11 53) (_ bv4613937818241073152 64)))))))
(assert
 (let ((?x15 (concat (select d0 (_ bv2 32)) (concat (select d0 (_ bv1 32)) (select d0 (_ bv0 32))))))
 (let ((?x24 (concat (select d0 (_ bv5 32)) (concat (select d0 (_ bv4 32)) (concat (select d0 (_ bv3 32)) ?x15)))))
 (let ((?x30 (concat (select d0 (_ bv7 32)) (concat (select d0 (_ bv6 32)) ?x24))))
 (fp.gt ((_ to_fp 11 53) ?x30) ((_ to_fp 11 53) (_ bv4607182418800017408 64)))))))
(assert
 (let ((?x15 (concat (select d0 (_ bv2 32)) (concat (select d0 (_ bv1 32)) (select d0 (_ bv0 32))))))
 (let ((?x24 (concat (select d0 (_ bv5 32)) (concat (select d0 (_ bv4 32)) (concat (select d0 (_ bv3 32)) ?x15)))))
 (let ((?x30 (concat (select d0 (_ bv7 32)) (concat (select d0 (_ bv6 32)) ?x24))))
 (let ((?x43 (bvor (concat ((_ extract 52 0) ?x30) (_ bv0 11)) (_ bv9223372036854775808 64))))
 (let ((?x53 (bvand ((_ extract 31 0) (bvadd (_ bv3074 64) (bvand (concat (_ bv0 52) ((_ extract 63 52) ?x30)) (_ bv2047 64)))) (_ bv63 32))))
 (let ((?x54 (concat (_ bv0 32) ?x53)))
 (let ((?x66 (ite (= ?x54 (_ bv62 64)) (concat ((_ extract 1 0) ?x43) (_ bv0 62)) (ite (= ?x54 (_ bv63 64)) (concat ((_ extract 0 0) ?x43) (_ bv0 63)) (_ bv0 64)))))
 (let ((?x78 (ite (= ?x54 (_ bv60 64)) (concat ((_ extract 3 0) ?x43) (_ bv0 60)) (ite (= ?x54 (_ bv61 64)) (concat ((_ extract 2 0) ?x43) (_ bv0 61)) ?x66))))
 (let ((?x90 (ite (= ?x54 (_ bv58 64)) (concat ((_ extract 5 0) ?x43) (_ bv0 58)) (ite (= ?x54 (_ bv59 64)) (concat ((_ extract 4 0) ?x43) (_ bv0 59)) ?x78))))
 (let ((?x102 (ite (= ?x54 (_ bv56 64)) (concat ((_ extract 7 0) ?x43) (_ bv0 56)) (ite (= ?x54 (_ bv57 64)) (concat ((_ extract 6 0) ?x43) (_ bv0 57)) ?x90))))
 (let ((?x114 (ite (= ?x54 (_ bv54 64)) (concat ((_ extract 9 0) ?x43) (_ bv0 54)) (ite (= ?x54 (_ bv55 64)) (concat ((_ extract 8 0) ?x43) (_ bv0 55)) ?x102))))
 (let ((?x125 (ite (= ?x54 (_ bv52 64)) (concat ((_ extract 11 0) ?x43) (_ bv0 52)) (ite (= ?x54 (_ bv53 64)) (concat ((_ extract 10 0) ?x43) (_ bv0 53)) ?x114))))
 (let ((?x137 (ite (= ?x54 (_ bv50 64)) (concat ((_ extract 13 0) ?x43) (_ bv0 50)) (ite (= ?x54 (_ bv51 64)) (concat ((_ extract 12 0) ?x43) (_ bv0 51)) ?x125))))
 (let ((?x149 (ite (= ?x54 (_ bv48 64)) (concat ((_ extract 15 0) ?x43) (_ bv0 48)) (ite (= ?x54 (_ bv49 64)) (concat ((_ extract 14 0) ?x43) (_ bv0 49)) ?x137))))
 (let ((?x161 (ite (= ?x54 (_ bv46 64)) (concat ((_ extract 17 0) ?x43) (_ bv0 46)) (ite (= ?x54 (_ bv47 64)) (concat ((_ extract 16 0) ?x43) (_ bv0 47)) ?x149))))
 (let ((?x173 (ite (= ?x54 (_ bv44 64)) (concat ((_ extract 19 0) ?x43) (_ bv0 44)) (ite (= ?x54 (_ bv45 64)) (concat ((_ extract 18 0) ?x43) (_ bv0 45)) ?x161))))
 (let ((?x185 (ite (= ?x54 (_ bv42 64)) (concat ((_ extract 21 0) ?x43) (_ bv0 42)) (ite (= ?x54 (_ bv43 64)) (concat ((_ extract 20 0) ?x43) (_ bv0 43)) ?x173))))
 (let ((?x197 (ite (= ?x54 (_ bv40 64)) (concat ((_ extract 23 0) ?x43) (_ bv0 40)) (ite (= ?x54 (_ bv41 64)) (concat ((_ extract 22 0) ?x43) (_ bv0 41)) ?x185))))
 (let ((?x209 (ite (= ?x54 (_ bv38 64)) (concat ((_ extract 25 0) ?x43) (_ bv0 38)) (ite (= ?x54 (_ bv39 64)) (concat ((_ extract 24 0) ?x43) (_ bv0 39)) ?x197))))
 (let ((?x221 (ite (= ?x54 (_ bv36 64)) (concat ((_ extract 27 0) ?x43) (_ bv0 36)) (ite (= ?x54 (_ bv37 64)) (concat ((_ extract 26 0) ?x43) (_ bv0 37)) ?x209))))
 (let ((?x233 (ite (= ?x54 (_ bv34 64)) (concat ((_ extract 29 0) ?x43) (_ bv0 34)) (ite (= ?x54 (_ bv35 64)) (concat ((_ extract 28 0) ?x43) (_ bv0 35)) ?x221))))
 (let ((?x244 (ite (= ?x54 (_ bv32 64)) (concat ((_ extract 31 0) ?x43) (_ bv0 32)) (ite (= ?x54 (_ bv33 64)) (concat ((_ extract 30 0) ?x43) (_ bv0 33)) ?x233))))
 (let ((?x256 (ite (= ?x54 (_ bv30 64)) (concat ((_ extract 33 0) ?x43) (_ bv0 30)) (ite (= ?x54 (_ bv31 64)) (concat ((_ extract 32 0) ?x43) (_ bv0 31)) ?x244))))
 (let ((?x268 (ite (= ?x54 (_ bv28 64)) (concat ((_ extract 35 0) ?x43) (_ bv0 28)) (ite (= ?x54 (_ bv29 64)) (concat ((_ extract 34 0) ?x43) (_ bv0 29)) ?x256))))
 (let ((?x280 (ite (= ?x54 (_ bv26 64)) (concat ((_ extract 37 0) ?x43) (_ bv0 26)) (ite (= ?x54 (_ bv27 64)) (concat ((_ extract 36 0) ?x43) (_ bv0 27)) ?x268))))
 (let ((?x292 (ite (= ?x54 (_ bv24 64)) (concat ((_ extract 39 0) ?x43) (_ bv0 24)) (ite (= ?x54 (_ bv25 64)) (concat ((_ extract 38 0) ?x43) (_ bv0 25)) ?x280))))
 (let ((?x304 (ite (= ?x54 (_ bv22 64)) (concat ((_ extract 41 0) ?x43) (_ bv0 22)) (ite (= ?x54 (_ bv23 64)) (concat ((_ extract 40 0) ?x43) (_ bv0 23)) ?x292))))
 (let ((?x316 (ite (= ?x54 (_ bv20 64)) (concat ((_ extract 43 0) ?x43) (_ bv0 20)) (ite (= ?x54 (_ bv21 64)) (concat ((_ extract 42 0) ?x43) (_ bv0 21)) ?x304))))
 (let ((?x328 (ite (= ?x54 (_ bv18 64)) (concat ((_ extract 45 0) ?x43) (_ bv0 18)) (ite (= ?x54 (_ bv19 64)) (concat ((_ extract 44 0) ?x43) (_ bv0 19)) ?x316))))
 (let ((?x340 (ite (= ?x54 (_ bv16 64)) (concat ((_ extract 47 0) ?x43) (_ bv0 16)) (ite (= ?x54 (_ bv17 64)) (concat ((_ extract 46 0) ?x43) (_ bv0 17)) ?x328))))
 (let ((?x352 (ite (= ?x54 (_ bv14 64)) (concat ((_ extract 49 0) ?x43) (_ bv0 14)) (ite (= ?x54 (_ bv15 64)) (concat ((_ extract 48 0) ?x43) (_ bv0 15)) ?x340))))
 (let ((?x364 (ite (= ?x54 (_ bv12 64)) (concat ((_ extract 51 0) ?x43) (_ bv0 12)) (ite (= ?x54 (_ bv13 64)) (concat ((_ extract 50 0) ?x43) (_ bv0 13)) ?x352))))
 (let ((?x375 (ite (= ?x54 (_ bv10 64)) (concat ((_ extract 53 0) ?x43) (_ bv0 10)) (ite (= ?x54 (_ bv11 64)) (concat ((_ extract 52 0) ?x43) (_ bv0 11)) ?x364))))
 (let ((?x387 (ite (= ?x54 (_ bv8 64)) (concat ((_ extract 55 0) ?x43) (_ bv0 8)) (ite (= ?x54 (_ bv9 64)) (concat ((_ extract 54 0) ?x43) (_ bv0 9)) ?x375))))
 (let ((?x399 (ite (= ?x54 (_ bv6 64)) (concat ((_ extract 57 0) ?x43) (_ bv0 6)) (ite (= ?x54 (_ bv7 64)) (concat ((_ extract 56 0) ?x43) (_ bv0 7)) ?x387))))
 (let ((?x411 (ite (= ?x54 (_ bv4 64)) (concat ((_ extract 59 0) ?x43) (_ bv0 4)) (ite (= ?x54 (_ bv5 64)) (concat ((_ extract 58 0) ?x43) (_ bv0 5)) ?x399))))
 (let ((?x423 (ite (= ?x54 (_ bv2 64)) (concat ((_ extract 61 0) ?x43) (_ bv0 2)) (ite (= ?x54 (_ bv3 64)) (concat ((_ extract 60 0) ?x43) (_ bv0 3)) ?x411))))
 (let ((?x431 (ite (= ?x54 (_ bv0 64)) ?x43 (ite (= ?x54 (_ bv1 64)) (concat ((_ extract 62 0) ?x43) (_ bv0 1)) ?x423))))
 (= (_ bv0 64) (ite (bvult ?x54 (_ bv64 64)) ?x431 (_ bv0 64))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x15 (concat (select d0 (_ bv2 32)) (concat (select d0 (_ bv1 32)) (select d0 (_ bv0 32))))))
(let ((?x24 (concat (select d0 (_ bv5 32)) (concat (select d0 (_ bv4 32)) (concat (select d0 (_ bv3 32)) ?x15)))))
(let ((?x30 (concat (select d0 (_ bv7 32)) (concat (select d0 (_ bv6 32)) ?x24))))
(let ((?x43 (bvor (concat ((_ extract 52 0) ?x30) (_ bv0 11)) (_ bv9223372036854775808 64))))
(let ((?x53 (bvand ((_ extract 31 0) (bvadd (_ bv3074 64) (bvand (concat (_ bv0 52) ((_ extract 63 52) ?x30)) (_ bv2047 64)))) (_ bv63 32))))
(let ((?x438 (concat (_ bv0 32) (bvsub (_ bv64 32) ?x53))))
(let ((?x446 (ite (= ?x438 (_ bv62 64)) (concat (_ bv0 62) ((_ extract 63 62) ?x43)) (ite (= ?x438 (_ bv63 64)) (concat (_ bv0 63) ((_ extract 63 63) ?x43)) (_ bv0 64)))))
(let ((?x454 (ite (= ?x438 (_ bv60 64)) (concat (_ bv0 60) ((_ extract 63 60) ?x43)) (ite (= ?x438 (_ bv61 64)) (concat (_ bv0 61) ((_ extract 63 61) ?x43)) ?x446))))
(let ((?x462 (ite (= ?x438 (_ bv58 64)) (concat (_ bv0 58) ((_ extract 63 58) ?x43)) (ite (= ?x438 (_ bv59 64)) (concat (_ bv0 59) ((_ extract 63 59) ?x43)) ?x454))))
(let ((?x470 (ite (= ?x438 (_ bv56 64)) (concat (_ bv0 56) ((_ extract 63 56) ?x43)) (ite (= ?x438 (_ bv57 64)) (concat (_ bv0 57) ((_ extract 63 57) ?x43)) ?x462))))
(let ((?x478 (ite (= ?x438 (_ bv54 64)) (concat (_ bv0 54) ((_ extract 63 54) ?x43)) (ite (= ?x438 (_ bv55 64)) (concat (_ bv0 55) ((_ extract 63 55) ?x43)) ?x470))))
(let ((?x486 (ite (= ?x438 (_ bv52 64)) (concat (_ bv0 52) ((_ extract 63 52) ?x43)) (ite (= ?x438 (_ bv53 64)) (concat (_ bv0 53) ((_ extract 63 53) ?x43)) ?x478))))
(let ((?x494 (ite (= ?x438 (_ bv50 64)) (concat (_ bv0 50) ((_ extract 63 50) ?x43)) (ite (= ?x438 (_ bv51 64)) (concat (_ bv0 51) ((_ extract 63 51) ?x43)) ?x486))))
(let ((?x502 (ite (= ?x438 (_ bv48 64)) (concat (_ bv0 48) ((_ extract 63 48) ?x43)) (ite (= ?x438 (_ bv49 64)) (concat (_ bv0 49) ((_ extract 63 49) ?x43)) ?x494))))
(let ((?x510 (ite (= ?x438 (_ bv46 64)) (concat (_ bv0 46) ((_ extract 63 46) ?x43)) (ite (= ?x438 (_ bv47 64)) (concat (_ bv0 47) ((_ extract 63 47) ?x43)) ?x502))))
(let ((?x518 (ite (= ?x438 (_ bv44 64)) (concat (_ bv0 44) ((_ extract 63 44) ?x43)) (ite (= ?x438 (_ bv45 64)) (concat (_ bv0 45) ((_ extract 63 45) ?x43)) ?x510))))
(let ((?x526 (ite (= ?x438 (_ bv42 64)) (concat (_ bv0 42) ((_ extract 63 42) ?x43)) (ite (= ?x438 (_ bv43 64)) (concat (_ bv0 43) ((_ extract 63 43) ?x43)) ?x518))))
(let ((?x534 (ite (= ?x438 (_ bv40 64)) (concat (_ bv0 40) ((_ extract 63 40) ?x43)) (ite (= ?x438 (_ bv41 64)) (concat (_ bv0 41) ((_ extract 63 41) ?x43)) ?x526))))
(let ((?x542 (ite (= ?x438 (_ bv38 64)) (concat (_ bv0 38) ((_ extract 63 38) ?x43)) (ite (= ?x438 (_ bv39 64)) (concat (_ bv0 39) ((_ extract 63 39) ?x43)) ?x534))))
(let ((?x550 (ite (= ?x438 (_ bv36 64)) (concat (_ bv0 36) ((_ extract 63 36) ?x43)) (ite (= ?x438 (_ bv37 64)) (concat (_ bv0 37) ((_ extract 63 37) ?x43)) ?x542))))
(let ((?x558 (ite (= ?x438 (_ bv34 64)) (concat (_ bv0 34) ((_ extract 63 34) ?x43)) (ite (= ?x438 (_ bv35 64)) (concat (_ bv0 35) ((_ extract 63 35) ?x43)) ?x550))))
(let ((?x566 (ite (= ?x438 (_ bv32 64)) (concat (_ bv0 32) ((_ extract 63 32) ?x43)) (ite (= ?x438 (_ bv33 64)) (concat (_ bv0 33) ((_ extract 63 33) ?x43)) ?x558))))
(let ((?x574 (ite (= ?x438 (_ bv30 64)) (concat (_ bv0 30) ((_ extract 63 30) ?x43)) (ite (= ?x438 (_ bv31 64)) (concat (_ bv0 31) ((_ extract 63 31) ?x43)) ?x566))))
(let ((?x582 (ite (= ?x438 (_ bv28 64)) (concat (_ bv0 28) ((_ extract 63 28) ?x43)) (ite (= ?x438 (_ bv29 64)) (concat (_ bv0 29) ((_ extract 63 29) ?x43)) ?x574))))
(let ((?x590 (ite (= ?x438 (_ bv26 64)) (concat (_ bv0 26) ((_ extract 63 26) ?x43)) (ite (= ?x438 (_ bv27 64)) (concat (_ bv0 27) ((_ extract 63 27) ?x43)) ?x582))))
(let ((?x598 (ite (= ?x438 (_ bv24 64)) (concat (_ bv0 24) ((_ extract 63 24) ?x43)) (ite (= ?x438 (_ bv25 64)) (concat (_ bv0 25) ((_ extract 63 25) ?x43)) ?x590))))
(let ((?x606 (ite (= ?x438 (_ bv22 64)) (concat (_ bv0 22) ((_ extract 63 22) ?x43)) (ite (= ?x438 (_ bv23 64)) (concat (_ bv0 23) ((_ extract 63 23) ?x43)) ?x598))))
(let ((?x614 (ite (= ?x438 (_ bv20 64)) (concat (_ bv0 20) ((_ extract 63 20) ?x43)) (ite (= ?x438 (_ bv21 64)) (concat (_ bv0 21) ((_ extract 63 21) ?x43)) ?x606))))
(let ((?x622 (ite (= ?x438 (_ bv18 64)) (concat (_ bv0 18) ((_ extract 63 18) ?x43)) (ite (= ?x438 (_ bv19 64)) (concat (_ bv0 19) ((_ extract 63 19) ?x43)) ?x614))))
(let ((?x630 (ite (= ?x438 (_ bv16 64)) (concat (_ bv0 16) ((_ extract 63 16) ?x43)) (ite (= ?x438 (_ bv17 64)) (concat (_ bv0 17) ((_ extract 63 17) ?x43)) ?x622))))
(let ((?x638 (ite (= ?x438 (_ bv14 64)) (concat (_ bv0 14) ((_ extract 63 14) ?x43)) (ite (= ?x438 (_ bv15 64)) (concat (_ bv0 15) ((_ extract 63 15) ?x43)) ?x630))))
(let ((?x646 (ite (= ?x438 (_ bv12 64)) (concat (_ bv0 12) ((_ extract 63 12) ?x43)) (ite (= ?x438 (_ bv13 64)) (concat (_ bv0 13) ((_ extract 63 13) ?x43)) ?x638))))
(let ((?x654 (ite (= ?x438 (_ bv10 64)) (concat (_ bv0 10) ((_ extract 63 10) ?x43)) (ite (= ?x438 (_ bv11 64)) (concat (_ bv0 11) ((_ extract 63 11) ?x43)) ?x646))))
(let ((?x662 (ite (= ?x438 (_ bv8 64)) (concat (_ bv0 8) ((_ extract 63 8) ?x43)) (ite (= ?x438 (_ bv9 64)) (concat (_ bv0 9) ((_ extract 63 9) ?x43)) ?x654))))
(let ((?x670 (ite (= ?x438 (_ bv6 64)) (concat (_ bv0 6) ((_ extract 63 6) ?x43)) (ite (= ?x438 (_ bv7 64)) (concat (_ bv0 7) ((_ extract 63 7) ?x43)) ?x662))))
(let ((?x678 (ite (= ?x438 (_ bv4 64)) (concat (_ bv0 4) ((_ extract 63 4) ?x43)) (ite (= ?x438 (_ bv5 64)) (concat (_ bv0 5) ((_ extract 63 5) ?x43)) ?x670))))
(let ((?x686 (ite (= ?x438 (_ bv2 64)) (concat (_ bv0 2) ((_ extract 63 2) ?x43)) (ite (= ?x438 (_ bv3 64)) (concat (_ bv0 3) ((_ extract 63 3) ?x43)) ?x678))))
(let ((?x692 (ite (= ?x438 (_ bv0 64)) ?x43 (ite (= ?x438 (_ bv1 64)) (concat (_ bv0 1) ((_ extract 63 1) ?x43)) ?x686))))
(not (not (= (_ bv0 64) (ite (bvult ?x438 (_ bv64 64)) ?x692 (_ bv0 64))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(exit)
