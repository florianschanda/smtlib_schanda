(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 1073741823) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b00111111111111111111111111111111))
;; x should be 1073741823
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.leq r (fp #b0 #b10011100 #b11111111111111111111111)))
(check-sat)
(exit)
