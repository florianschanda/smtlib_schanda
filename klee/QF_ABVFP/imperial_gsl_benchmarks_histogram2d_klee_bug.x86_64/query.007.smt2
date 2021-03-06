(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun x10 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun const_arr11 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x15 (concat (select x10 (_ bv2 32)) (concat (select x10 (_ bv1 32)) (select x10 (_ bv0 32))))))
 (let ((?x21 ((_ to_fp 11 53) roundNearestTiesToEven ((_ to_fp 8 24) (concat (select x10 (_ bv3 32)) ?x15)))))
 (fp.gt ?x21 ((_ to_fp 11 53) (_ bv4596373779694328218 64))))))
(assert
 (let ((?x15 (concat (select x10 (_ bv2 32)) (concat (select x10 (_ bv1 32)) (select x10 (_ bv0 32))))))
 (let ((?x21 ((_ to_fp 11 53) roundNearestTiesToEven ((_ to_fp 8 24) (concat (select x10 (_ bv3 32)) ?x15)))))
 (fp.lt ?x21 ((_ to_fp 11 53) (_ bv4600877379321698714 64))))))
(assert
 (let ((?x15 (concat (select x10 (_ bv2 32)) (concat (select x10 (_ bv1 32)) (select x10 (_ bv0 32))))))
(let ((?x21 ((_ to_fp 11 53) roundNearestTiesToEven ((_ to_fp 8 24) (concat (select x10 (_ bv3 32)) ?x15)))))
(let ((?x36 (fp.div roundNearestTiesToEven (fp.sub roundNearestTiesToEven ?x21 ((_ to_fp 11 53) (_ bv0 64))) ((_ to_fp 11 53) (_ bv4607182418800017408 64)))))
(let ((?x39 ((_ fp.to_ubv 64) roundTowardZero (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) (_ bv4621819117588971520 64)) ?x36))))
(let ((?x43 ((_ extract 31 0) (bvmul (_ bv8 64) (bvadd (_ bv1 64) ?x39)))))
(let ((?x49 (store (store (store (store const_arr11 (_ bv0 32) (_ bv0 8)) (_ bv1 32) (_ bv0 8)) (_ bv2 32) (_ bv0 8)) (_ bv3 32) (_ bv0 8))))
(let ((?x57 (store (store (store (store ?x49 (_ bv4 32) (_ bv0 8)) (_ bv5 32) (_ bv0 8)) (_ bv6 32) (_ bv0 8)) (_ bv7 32) (_ bv0 8))))
(let ((?x67 (store (store (store (store ?x57 (_ bv8 32) (_ bv154 8)) (_ bv9 32) (_ bv153 8)) (_ bv10 32) (_ bv153 8)) (_ bv11 32) (_ bv153 8))))
(let ((?x77 (store (store (store (store ?x67 (_ bv12 32) (_ bv153 8)) (_ bv13 32) (_ bv153 8)) (_ bv14 32) (_ bv185 8)) (_ bv15 32) (_ bv63 8))))
(let ((?x85 (store (store (store (store ?x77 (_ bv16 32) (_ bv154 8)) (_ bv17 32) (_ bv153 8)) (_ bv18 32) (_ bv153 8)) (_ bv19 32) (_ bv153 8))))
(let ((?x94 (store (store (store (store ?x85 (_ bv20 32) (_ bv153 8)) (_ bv21 32) (_ bv153 8)) (_ bv22 32) (_ bv201 8)) (_ bv23 32) (_ bv63 8))))
(let ((?x103 (store (store (store (store ?x94 (_ bv24 32) (_ bv51 8)) (_ bv25 32) (_ bv51 8)) (_ bv26 32) (_ bv51 8)) (_ bv27 32) (_ bv51 8))))
(let ((?x112 (store (store (store (store ?x103 (_ bv28 32) (_ bv51 8)) (_ bv29 32) (_ bv51 8)) (_ bv30 32) (_ bv211 8)) (_ bv31 32) (_ bv63 8))))
(let ((?x120 (store (store (store (store ?x112 (_ bv32 32) (_ bv154 8)) (_ bv33 32) (_ bv153 8)) (_ bv34 32) (_ bv153 8)) (_ bv35 32) (_ bv153 8))))
(let ((?x129 (store (store (store (store ?x120 (_ bv36 32) (_ bv153 8)) (_ bv37 32) (_ bv153 8)) (_ bv38 32) (_ bv217 8)) (_ bv39 32) (_ bv63 8))))
(let ((?x137 (store (store (store (store ?x129 (_ bv40 32) (_ bv0 8)) (_ bv41 32) (_ bv0 8)) (_ bv42 32) (_ bv0 8)) (_ bv43 32) (_ bv0 8))))
(let ((?x146 (store (store (store (store ?x137 (_ bv44 32) (_ bv0 8)) (_ bv45 32) (_ bv0 8)) (_ bv46 32) (_ bv224 8)) (_ bv47 32) (_ bv63 8))))
(let ((?x154 (store (store (store (store ?x146 (_ bv48 32) (_ bv51 8)) (_ bv49 32) (_ bv51 8)) (_ bv50 32) (_ bv51 8)) (_ bv51 32) (_ bv51 8))))
(let ((?x163 (store (store (store (store ?x154 (_ bv52 32) (_ bv51 8)) (_ bv53 32) (_ bv51 8)) (_ bv54 32) (_ bv227 8)) (_ bv55 32) (_ bv63 8))))
(let ((?x172 (store (store (store (store ?x163 (_ bv56 32) (_ bv102 8)) (_ bv57 32) (_ bv102 8)) (_ bv58 32) (_ bv102 8)) (_ bv59 32) (_ bv102 8))))
(let ((?x181 (store (store (store (store ?x172 (_ bv60 32) (_ bv102 8)) (_ bv61 32) (_ bv102 8)) (_ bv62 32) (_ bv230 8)) (_ bv63 32) (_ bv63 8))))
(let ((?x189 (store (store (store (store ?x181 (_ bv64 32) (_ bv154 8)) (_ bv65 32) (_ bv153 8)) (_ bv66 32) (_ bv153 8)) (_ bv67 32) (_ bv153 8))))
(let ((?x198 (store (store (store (store ?x189 (_ bv68 32) (_ bv153 8)) (_ bv69 32) (_ bv153 8)) (_ bv70 32) (_ bv233 8)) (_ bv71 32) (_ bv63 8))))
(let ((?x208 (store (store (store (store ?x198 (_ bv72 32) (_ bv205 8)) (_ bv73 32) (_ bv204 8)) (_ bv74 32) (_ bv204 8)) (_ bv75 32) (_ bv204 8))))
(let ((?x217 (store (store (store (store ?x208 (_ bv76 32) (_ bv204 8)) (_ bv77 32) (_ bv204 8)) (_ bv78 32) (_ bv236 8)) (_ bv79 32) (_ bv63 8))))
(let ((?x225 (store (store (store (store ?x217 (_ bv80 32) (_ bv0 8)) (_ bv81 32) (_ bv0 8)) (_ bv82 32) (_ bv0 8)) (_ bv83 32) (_ bv0 8))))
(let ((?x234 (store (store (store (store ?x225 (_ bv84 32) (_ bv0 8)) (_ bv85 32) (_ bv0 8)) (_ bv86 32) (_ bv240 8)) (_ bv87 32) (_ bv63 8))))
(let ((?x241 (concat (select ?x234 (bvadd (_ bv2 32) ?x43)) (concat (select ?x234 (bvadd (_ bv1 32) ?x43)) (select ?x234 ?x43)))))
(let ((?x247 (concat (select ?x234 (bvadd (_ bv4 32) ?x43)) (concat (select ?x234 (bvadd (_ bv3 32) ?x43)) ?x241))))
(let ((?x253 (concat (select ?x234 (bvadd (_ bv6 32) ?x43)) (concat (select ?x234 (bvadd (_ bv5 32) ?x43)) ?x247))))
(not (fp.gt ((_ to_fp 11 53) (concat (select ?x234 (bvadd (_ bv7 32) ?x43)) ?x253)) ?x21)))))))))))))))))))))))))))))))))
(check-sat)
(exit)
