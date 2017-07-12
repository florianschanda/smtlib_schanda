(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 170141183460469231731687303715884105730) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010))
;; x should be 170141183460469231731687303715884105730
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.leq r (fp #b0 #b11111110 #b00000000000000000000000)))
(check-sat)
(exit)
