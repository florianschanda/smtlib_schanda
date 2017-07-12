(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 1558899508) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01011100111010101110101100110100))
;; x should be 1558899508
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.eq r (fp #b0 #b10000011101 #b0111001110101011101011001101000000000000000000000000)))
(check-sat)
(exit)
