(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 5507466120808185745) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0100110001101110011100110100000111001111010001010011111110010001))
;; x should be 5507466120808185745
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.eq r (fp #b0 #b10111101 #b00110001101110011100111)))
(check-sat)
(exit)
