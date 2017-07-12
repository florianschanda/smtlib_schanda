(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 3982447281) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11101101010111110101001010110001))
;; x should be 3982447281
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.eq r (fp #b0 #b10011110 #b11011010101111101010010)))
(check-sat)
(exit)
