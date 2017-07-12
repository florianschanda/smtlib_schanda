(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 13481637710614272857) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1011101100011000011001100001000110101011101011001001101101011001))
;; x should be 13481637710614272857
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.eq r (fp #b0 #b10111110 #b01110110001100001100110)))
(check-sat)
(exit)
