(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 211501426067638076375443152612760795803) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10011111000111011011000101100110110001011010001111000010011000011000101101110101000100011001010011010001111000001011101010011011))
;; x should be 211501426067638076375443152612760795803
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.eq r (fp #b0 #b10001111110 #b0011111000111011011000101100110110001011010001111000)))
(check-sat)
(exit)
