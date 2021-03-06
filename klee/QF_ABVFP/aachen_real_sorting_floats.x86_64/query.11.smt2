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
(declare-fun sym0 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun fresh_to_ieee_bv_!0 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!1 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!2 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!3 () (_ BitVec 32))
(declare-fun const_arr11 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x14 (select sym0 (_ bv6 32))))
 (let ((?x17 (select sym0 (_ bv7 32))))
 (let ((?x18 (concat ?x17 (concat ?x14 (concat (select sym0 (_ bv5 32)) (select sym0 (_ bv4 32)))))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (not (fp.isNaN ?x19)))))))
(assert
 (let ((?x28 (select sym0 (_ bv10 32))))
 (let ((?x31 (select sym0 (_ bv11 32))))
 (let ((?x32 (concat ?x31 (concat ?x28 (concat (select sym0 (_ bv9 32)) (select sym0 (_ bv8 32)))))))
 (let ((?x33 ((_ to_fp 8 24) ?x32)))
 (not (fp.isNaN ?x33)))))))
(assert
 (let ((?x42 (select sym0 (_ bv14 32))))
 (let ((?x45 (select sym0 (_ bv15 32))))
 (let ((?x46 (concat ?x45 (concat ?x42 (concat (select sym0 (_ bv13 32)) (select sym0 (_ bv12 32)))))))
 (not (fp.isNaN ((_ to_fp 8 24) ?x46)))))))
(assert
 (let ((?x28 (select sym0 (_ bv10 32))))
 (let ((?x31 (select sym0 (_ bv11 32))))
 (let ((?x32 (concat ?x31 (concat ?x28 (concat (select sym0 (_ bv9 32)) (select sym0 (_ bv8 32)))))))
 (let ((?x33 ((_ to_fp 8 24) ?x32)))
 (let ((?x14 (select sym0 (_ bv6 32))))
 (let ((?x17 (select sym0 (_ bv7 32))))
 (let ((?x18 (concat ?x17 (concat ?x14 (concat (select sym0 (_ bv5 32)) (select sym0 (_ bv4 32)))))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x59 (fp.add roundNearestTiesToEven ?x19 ?x33)))
 (= ?x59 ((_ to_fp 8 24) fresh_to_ieee_bv_!0))))))))))))
(assert
 (let ((?x28 (select sym0 (_ bv10 32))))
 (let ((?x31 (select sym0 (_ bv11 32))))
 (let ((?x32 (concat ?x31 (concat ?x28 (concat (select sym0 (_ bv9 32)) (select sym0 (_ bv8 32)))))))
 (let ((?x33 ((_ to_fp 8 24) ?x32)))
 (let ((?x14 (select sym0 (_ bv6 32))))
 (let ((?x17 (select sym0 (_ bv7 32))))
 (let ((?x18 (concat ?x17 (concat ?x14 (concat (select sym0 (_ bv5 32)) (select sym0 (_ bv4 32)))))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x59 (fp.add roundNearestTiesToEven ?x19 ?x33)))
 (= ?x59 ((_ to_fp 8 24) fresh_to_ieee_bv_!1))))))))))))
(assert
 (let ((?x28 (select sym0 (_ bv10 32))))
 (let ((?x31 (select sym0 (_ bv11 32))))
 (let ((?x32 (concat ?x31 (concat ?x28 (concat (select sym0 (_ bv9 32)) (select sym0 (_ bv8 32)))))))
 (let ((?x33 ((_ to_fp 8 24) ?x32)))
 (let ((?x14 (select sym0 (_ bv6 32))))
 (let ((?x17 (select sym0 (_ bv7 32))))
 (let ((?x18 (concat ?x17 (concat ?x14 (concat (select sym0 (_ bv5 32)) (select sym0 (_ bv4 32)))))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x59 (fp.add roundNearestTiesToEven ?x19 ?x33)))
 (= ?x59 ((_ to_fp 8 24) fresh_to_ieee_bv_!2))))))))))))
(assert
 (let ((?x28 (select sym0 (_ bv10 32))))
 (let ((?x31 (select sym0 (_ bv11 32))))
 (let ((?x32 (concat ?x31 (concat ?x28 (concat (select sym0 (_ bv9 32)) (select sym0 (_ bv8 32)))))))
 (let ((?x33 ((_ to_fp 8 24) ?x32)))
 (let ((?x14 (select sym0 (_ bv6 32))))
 (let ((?x17 (select sym0 (_ bv7 32))))
 (let ((?x18 (concat ?x17 (concat ?x14 (concat (select sym0 (_ bv5 32)) (select sym0 (_ bv4 32)))))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x59 (fp.add roundNearestTiesToEven ?x19 ?x33)))
 (= ?x59 ((_ to_fp 8 24) fresh_to_ieee_bv_!3))))))))))))
(assert
 (let ((?x14 (select sym0 (_ bv6 32))))
(let ((?x17 (select sym0 (_ bv7 32))))
(let ((?x18 (concat ?x17 (concat ?x14 (concat (select sym0 (_ bv5 32)) (select sym0 (_ bv4 32)))))))
(let ((?x19 ((_ to_fp 8 24) ?x18)))
(let ((?x28 (select sym0 (_ bv10 32))))
(let ((?x31 (select sym0 (_ bv11 32))))
(let ((?x32 (concat ?x31 (concat ?x28 (concat (select sym0 (_ bv9 32)) (select sym0 (_ bv8 32)))))))
(let ((?x33 ((_ to_fp 8 24) ?x32)))
(let ((?x59 (fp.add roundNearestTiesToEven ?x19 ?x33)))
(let ((?x63 (ite (fp.lt ?x59 ?x19) (_ bv0 32) (_ bv1 32))))
(let ((?x67 ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x63)))))
(let ((?x45 (select sym0 (_ bv15 32))))
(let ((?x42 (select sym0 (_ bv14 32))))
(let ((?x39 (select sym0 (_ bv13 32))))
(let ((?x37 (select sym0 (_ bv12 32))))
(let ((?x25 (select sym0 (_ bv9 32))))
(let ((?x23 (select sym0 (_ bv8 32))))
(let ((?x11 (select sym0 (_ bv5 32))))
(let ((?x9 (select sym0 (_ bv4 32))))
(let ((?x125 (store (store (store (store const_arr11 (_ bv0 32) (_ bv0 8)) (_ bv1 32) (_ bv0 8)) (_ bv2 32) (_ bv0 8)) (_ bv3 32) (_ bv0 8))))
(let ((?x129 (store (store (store (store ?x125 (_ bv4 32) (_ bv0 8)) (_ bv5 32) (_ bv0 8)) (_ bv6 32) (_ bv0 8)) (_ bv7 32) (_ bv0 8))))
(let ((?x133 (store (store (store (store ?x129 (_ bv8 32) (_ bv0 8)) (_ bv9 32) (_ bv0 8)) (_ bv10 32) (_ bv0 8)) (_ bv11 32) (_ bv0 8))))
(let ((?x137 (store (store (store (store ?x133 (_ bv12 32) (_ bv0 8)) (_ bv13 32) (_ bv0 8)) (_ bv14 32) (_ bv0 8)) (_ bv15 32) (_ bv0 8))))
(let ((?x141 (store (store (store (store ?x137 (_ bv16 32) (_ bv0 8)) (_ bv17 32) (_ bv0 8)) (_ bv18 32) (_ bv0 8)) (_ bv19 32) (_ bv0 8))))
(let ((?x145 (store (store (store (store ?x141 (_ bv20 32) (_ bv0 8)) (_ bv21 32) (_ bv0 8)) (_ bv22 32) (_ bv0 8)) (_ bv23 32) (_ bv0 8))))
(let ((?x149 (store (store (store (store ?x145 (_ bv24 32) (_ bv0 8)) (_ bv25 32) (_ bv0 8)) (_ bv26 32) (_ bv0 8)) (_ bv27 32) (_ bv0 8))))
(let ((?x153 (store (store (store (store ?x149 (_ bv28 32) (_ bv0 8)) (_ bv29 32) (_ bv0 8)) (_ bv30 32) (_ bv0 8)) (_ bv31 32) (_ bv0 8))))
(let ((?x157 (store (store (store (store ?x153 (_ bv32 32) (_ bv0 8)) (_ bv33 32) (_ bv0 8)) (_ bv34 32) (_ bv0 8)) (_ bv35 32) (_ bv0 8))))
(let ((?x161 (store (store (store (store ?x157 (_ bv36 32) (_ bv0 8)) (_ bv37 32) (_ bv0 8)) (_ bv38 32) (_ bv0 8)) (_ bv39 32) (_ bv0 8))))
(let ((?x163 (store (store ?x161 (_ bv0 32) ((_ extract 7 0) fresh_to_ieee_bv_!3)) (_ bv1 32) ((_ extract 15 8) fresh_to_ieee_bv_!2))))
(let ((?x165 (store (store ?x163 (_ bv2 32) ((_ extract 23 16) fresh_to_ieee_bv_!1)) (_ bv3 32) ((_ extract 31 24) fresh_to_ieee_bv_!0))))
(let ((?x169 (store (store (store (store ?x165 (_ bv4 32) ?x9) (_ bv5 32) ?x11) (_ bv6 32) ?x14) (_ bv7 32) ?x17)))
(let ((?x173 (store (store (store (store ?x169 (_ bv8 32) ?x23) (_ bv9 32) ?x25) (_ bv10 32) ?x28) (_ bv11 32) ?x31)))
(let ((?x177 (store (store (store (store ?x173 (_ bv12 32) (_ bv154 8)) (_ bv13 32) (_ bv153 8)) (_ bv14 32) (_ bv153 8)) (_ bv15 32) (_ bv62 8))))
(let ((?x181 (store (store (store (store ?x177 (_ bv16 32) (_ bv205 8)) (_ bv17 32) (_ bv204 8)) (_ bv18 32) (_ bv76 8)) (_ bv19 32) (_ bv62 8))))
(let ((?x185 (store (store (store (store ?x181 (_ bv20 32) (_ bv0 8)) (_ bv21 32) (_ bv0 8)) (_ bv22 32) (_ bv128 8)) (_ bv23 32) (_ bv63 8))))
(let ((?x189 (store (store (store (store ?x185 (_ bv24 32) (_ bv0 8)) (_ bv25 32) (_ bv0 8)) (_ bv26 32) (_ bv64 8)) (_ bv27 32) (_ bv64 8))))
(let ((?x193 (store (store (store (store ?x189 (_ bv28 32) ?x37) (_ bv29 32) ?x39) (_ bv30 32) ?x42) (_ bv31 32) ?x45)))
(let ((?x197 (store (store (store (store ?x193 (_ bv32 32) (_ bv0 8)) (_ bv33 32) (_ bv0 8)) (_ bv34 32) (_ bv128 8)) (_ bv35 32) (_ bv63 8))))
(let ((?x201 (store (store (store (store ?x197 (_ bv36 32) (_ bv0 8)) (_ bv37 32) (_ bv0 8)) (_ bv38 32) (_ bv0 8)) (_ bv39 32) (_ bv65 8))))
(let ((?x208 (concat (select ?x201 (bvadd (_ bv2 32) ?x67)) (concat (select ?x201 (bvadd (_ bv1 32) ?x67)) (select ?x201 ?x67)))))
(let ((?x214 (ite (fp.lt ?x19 ((_ to_fp 8 24) (concat (select ?x201 (bvadd (_ bv3 32) ?x67)) ?x208))) (_ bv1 32) ?x63)))
(let ((?x221 (concat (select ?x201 (bvadd (_ bv1 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x214))))) (select ?x201 ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x214)))))))
(let ((?x224 (concat (select ?x201 (bvadd (_ bv2 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x214))))) ?x221)))
(let ((?x227 (concat (select ?x201 (bvadd (_ bv3 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x214))))) ?x224)))
(let ((?x230 (ite (fp.lt ?x33 ((_ to_fp 8 24) ?x227)) (_ bv2 32) ?x214)))
(let ((?x237 (concat (select ?x201 (bvadd (_ bv1 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x230))))) (select ?x201 ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x230)))))))
(let ((?x240 (concat (select ?x201 (bvadd (_ bv2 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x230))))) ?x237)))
(let ((?x243 (concat (select ?x201 (bvadd (_ bv3 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x230))))) ?x240)))
(let ((?x246 (ite (fp.lt ((_ to_fp 8 24) (_ bv1050253722 32)) ((_ to_fp 8 24) ?x243)) (_ bv3 32) ?x230)))
(let ((?x253 (concat (select ?x201 (bvadd (_ bv1 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x246))))) (select ?x201 ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x246)))))))
(let ((?x256 (concat (select ?x201 (bvadd (_ bv2 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x246))))) ?x253)))
(let ((?x259 (concat (select ?x201 (bvadd (_ bv3 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x246))))) ?x256)))
(let ((?x262 (ite (fp.lt ((_ to_fp 8 24) (_ bv1045220557 32)) ((_ to_fp 8 24) ?x259)) (_ bv4 32) ?x246)))
(let ((?x269 (concat (select ?x201 (bvadd (_ bv1 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x262))))) (select ?x201 ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x262)))))))
(let ((?x272 (concat (select ?x201 (bvadd (_ bv2 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x262))))) ?x269)))
(let ((?x275 (concat (select ?x201 (bvadd (_ bv3 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x262))))) ?x272)))
(let ((?x278 (ite (fp.lt ((_ to_fp 8 24) (_ bv1065353216 32)) ((_ to_fp 8 24) ?x275)) (_ bv5 32) ?x262)))
(let ((?x285 (concat (select ?x201 (bvadd (_ bv1 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x278))))) (select ?x201 ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x278)))))))
(let ((?x288 (concat (select ?x201 (bvadd (_ bv2 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x278))))) ?x285)))
(let ((?x291 (concat (select ?x201 (bvadd (_ bv3 32) ((_ extract 31 0) (bvmul (_ bv4 64) ((_ sign_extend 32) ?x278))))) ?x288)))
(let ((?x296 (bvmul (_ bv4 64) ((_ sign_extend 32) (ite (fp.lt ((_ to_fp 8 24) (_ bv1077936128 32)) ((_ to_fp 8 24) ?x291)) (_ bv6 32) ?x278)))))
(not (bvult ?x296 (_ bv37 64))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(exit)
