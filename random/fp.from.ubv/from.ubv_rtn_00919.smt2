(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 65534) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1111111111111110))
;; x should be 65534
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.leq r (fp #b0 #b10001110 #b11111111111111000000000)))
(check-sat)
(exit)
