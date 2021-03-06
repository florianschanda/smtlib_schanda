(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/aachen_real_gmp_gmp_klee_mpqload.x86_64/query.018.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun i_ackermann!0 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!1 () (_ BitVec 64))
(declare-fun fresh_to_ieee_bv_!2 () (_ BitVec 64))
(assert
 (or (fp.isNaN ((_ to_fp 11 53) roundNearestTiesToEven i_ackermann!0)) (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven i_ackermann!0) ((_ to_fp 11 53) (_ bv0 64)))))
(assert
 (let ((?x9 ((_ to_fp 11 53) roundNearestTiesToEven i_ackermann!0)))
 (let ((?x17 (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) (_ bv9223372036854775808 64)) ?x9)))
 (= ?x17 ((_ to_fp 11 53) fresh_to_ieee_bv_!1)))))
(assert
 (let ((?x9 ((_ to_fp 11 53) roundNearestTiesToEven i_ackermann!0)))
 (let ((?x17 (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) (_ bv9223372036854775808 64)) ?x9)))
 (= ?x17 ((_ to_fp 11 53) fresh_to_ieee_bv_!2)))))
(assert
 (let ((?x42 (concat ((_ extract 0 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 63))))
(let ((?x35 ((_ extract 31 0) (bvadd (_ bv3074 64) (bvand (concat (_ bv0 52) ((_ extract 63 52) fresh_to_ieee_bv_!2)) (_ bv2047 64))))))
(let ((?x39 (concat (_ bv0 32) (bvand ?x35 (_ bv63 32)))))
(let ((?x48 (concat ((_ extract 1 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 62))))
(let ((?x54 (concat ((_ extract 2 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 61))))
(let ((?x57 (ite (= ?x39 (_ bv61 64)) ?x54 (ite (= ?x39 (_ bv62 64)) ?x48 (ite (= ?x39 (_ bv63 64)) ?x42 (_ bv0 64))))))
(let ((?x60 (concat ((_ extract 3 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 60))))
(let ((?x66 (concat ((_ extract 4 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 59))))
(let ((?x72 (concat ((_ extract 5 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 58))))
(let ((?x75 (ite (= ?x39 (_ bv58 64)) ?x72 (ite (= ?x39 (_ bv59 64)) ?x66 (ite (= ?x39 (_ bv60 64)) ?x60 ?x57)))))
(let ((?x78 (concat ((_ extract 6 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 57))))
(let ((?x84 (concat ((_ extract 7 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 56))))
(let ((?x90 (concat ((_ extract 8 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 55))))
(let ((?x93 (ite (= ?x39 (_ bv55 64)) ?x90 (ite (= ?x39 (_ bv56 64)) ?x84 (ite (= ?x39 (_ bv57 64)) ?x78 ?x75)))))
(let ((?x96 (concat ((_ extract 9 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 54))))
(let ((?x102 (concat ((_ extract 10 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 53))))
(let ((?x107 (concat ((_ extract 11 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 52))))
(let ((?x110 (ite (= ?x39 (_ bv52 64)) ?x107 (ite (= ?x39 (_ bv53 64)) ?x102 (ite (= ?x39 (_ bv54 64)) ?x96 ?x93)))))
(let ((?x113 (concat ((_ extract 12 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 51))))
(let ((?x119 (concat ((_ extract 13 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 50))))
(let ((?x125 (concat ((_ extract 14 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 49))))
(let ((?x128 (ite (= ?x39 (_ bv49 64)) ?x125 (ite (= ?x39 (_ bv50 64)) ?x119 (ite (= ?x39 (_ bv51 64)) ?x113 ?x110)))))
(let ((?x131 (concat ((_ extract 15 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 48))))
(let ((?x137 (concat ((_ extract 16 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 47))))
(let ((?x143 (concat ((_ extract 17 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 46))))
(let ((?x146 (ite (= ?x39 (_ bv46 64)) ?x143 (ite (= ?x39 (_ bv47 64)) ?x137 (ite (= ?x39 (_ bv48 64)) ?x131 ?x128)))))
(let ((?x149 (concat ((_ extract 18 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 45))))
(let ((?x155 (concat ((_ extract 19 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 44))))
(let ((?x161 (concat ((_ extract 20 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 43))))
(let ((?x164 (ite (= ?x39 (_ bv43 64)) ?x161 (ite (= ?x39 (_ bv44 64)) ?x155 (ite (= ?x39 (_ bv45 64)) ?x149 ?x146)))))
(let ((?x167 (concat ((_ extract 21 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 42))))
(let ((?x173 (concat ((_ extract 22 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 41))))
(let ((?x179 (concat ((_ extract 23 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 40))))
(let ((?x182 (ite (= ?x39 (_ bv40 64)) ?x179 (ite (= ?x39 (_ bv41 64)) ?x173 (ite (= ?x39 (_ bv42 64)) ?x167 ?x164)))))
(let ((?x185 (concat ((_ extract 24 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 39))))
(let ((?x191 (concat ((_ extract 25 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 38))))
(let ((?x197 (concat ((_ extract 26 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 37))))
(let ((?x200 (ite (= ?x39 (_ bv37 64)) ?x197 (ite (= ?x39 (_ bv38 64)) ?x191 (ite (= ?x39 (_ bv39 64)) ?x185 ?x182)))))
(let ((?x203 (concat ((_ extract 27 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 36))))
(let ((?x209 (concat ((_ extract 28 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 35))))
(let ((?x215 (concat ((_ extract 29 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 34))))
(let ((?x218 (ite (= ?x39 (_ bv34 64)) ?x215 (ite (= ?x39 (_ bv35 64)) ?x209 (ite (= ?x39 (_ bv36 64)) ?x203 ?x200)))))
(let ((?x221 (concat ((_ extract 30 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 33))))
(let ((?x226 (concat ((_ extract 31 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 32))))
(let ((?x232 (concat ((_ extract 32 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 31))))
(let ((?x235 (ite (= ?x39 (_ bv31 64)) ?x232 (ite (= ?x39 (_ bv32 64)) ?x226 (ite (= ?x39 (_ bv33 64)) ?x221 ?x218)))))
(let ((?x238 (concat ((_ extract 33 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 30))))
(let ((?x244 (concat ((_ extract 34 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 29))))
(let ((?x250 (concat ((_ extract 35 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 28))))
(let ((?x253 (ite (= ?x39 (_ bv28 64)) ?x250 (ite (= ?x39 (_ bv29 64)) ?x244 (ite (= ?x39 (_ bv30 64)) ?x238 ?x235)))))
(let ((?x256 (concat ((_ extract 36 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 27))))
(let ((?x262 (concat ((_ extract 37 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 26))))
(let ((?x268 (concat ((_ extract 38 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 25))))
(let ((?x271 (ite (= ?x39 (_ bv25 64)) ?x268 (ite (= ?x39 (_ bv26 64)) ?x262 (ite (= ?x39 (_ bv27 64)) ?x256 ?x253)))))
(let ((?x274 (concat ((_ extract 39 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 24))))
(let ((?x280 (concat ((_ extract 40 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 23))))
(let ((?x286 (concat ((_ extract 41 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 22))))
(let ((?x289 (ite (= ?x39 (_ bv22 64)) ?x286 (ite (= ?x39 (_ bv23 64)) ?x280 (ite (= ?x39 (_ bv24 64)) ?x274 ?x271)))))
(let ((?x292 (concat ((_ extract 42 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 21))))
(let ((?x298 (concat ((_ extract 43 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 20))))
(let ((?x304 (concat ((_ extract 44 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 19))))
(let ((?x307 (ite (= ?x39 (_ bv19 64)) ?x304 (ite (= ?x39 (_ bv20 64)) ?x298 (ite (= ?x39 (_ bv21 64)) ?x292 ?x289)))))
(let ((?x310 (concat ((_ extract 45 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 18))))
(let ((?x316 (concat ((_ extract 46 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 17))))
(let ((?x322 (concat ((_ extract 47 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 16))))
(let ((?x325 (ite (= ?x39 (_ bv16 64)) ?x322 (ite (= ?x39 (_ bv17 64)) ?x316 (ite (= ?x39 (_ bv18 64)) ?x310 ?x307)))))
(let ((?x328 (concat ((_ extract 48 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 15))))
(let ((?x334 (concat ((_ extract 49 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 14))))
(let ((?x340 (concat ((_ extract 50 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 13))))
(let ((?x343 (ite (= ?x39 (_ bv13 64)) ?x340 (ite (= ?x39 (_ bv14 64)) ?x334 (ite (= ?x39 (_ bv15 64)) ?x328 ?x325)))))
(let ((?x346 (concat ((_ extract 51 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 12))))
(let ((?x351 (concat ((_ extract 52 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 11))))
(let ((?x357 (concat ((_ extract 53 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 10))))
(let ((?x360 (ite (= ?x39 (_ bv10 64)) ?x357 (ite (= ?x39 (_ bv11 64)) ?x351 (ite (= ?x39 (_ bv12 64)) ?x346 ?x343)))))
(let ((?x363 (concat ((_ extract 54 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 9))))
(let ((?x369 (concat ((_ extract 55 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 8))))
(let ((?x375 (concat ((_ extract 56 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 7))))
(let ((?x378 (ite (= ?x39 (_ bv7 64)) ?x375 (ite (= ?x39 (_ bv8 64)) ?x369 (ite (= ?x39 (_ bv9 64)) ?x363 ?x360)))))
(let ((?x381 (concat ((_ extract 57 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 6))))
(let ((?x387 (concat ((_ extract 58 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 5))))
(let ((?x393 (concat ((_ extract 59 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 4))))
(let ((?x396 (ite (= ?x39 (_ bv4 64)) ?x393 (ite (= ?x39 (_ bv5 64)) ?x387 (ite (= ?x39 (_ bv6 64)) ?x381 ?x378)))))
(let ((?x399 (concat ((_ extract 60 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 3))))
(let ((?x405 (concat ((_ extract 61 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 2))))
(let ((?x411 (concat ((_ extract 62 0) (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))) (_ bv0 1))))
(let ((?x414 (ite (= ?x39 (_ bv1 64)) ?x411 (ite (= ?x39 (_ bv2 64)) ?x405 (ite (= ?x39 (_ bv3 64)) ?x399 ?x396)))))
(let ((?x24 (bvor (concat ((_ extract 52 0) fresh_to_ieee_bv_!1) (_ bv0 11)) (_ bv9223372036854775808 64))))
(not (= (_ bv0 64) (ite (bvult ?x39 (_ bv64 64)) (ite (= ?x39 (_ bv0 64)) ?x24 ?x414) (_ bv0 64))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(exit)
