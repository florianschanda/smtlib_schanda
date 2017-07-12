(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 16460279299240125334) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1110010001101110101010001100111111110110111011000110001110010110))
;; x should be 16460279299240125334
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.eq r (fp #b0 #b10111110 #b11001000110111010101000)))
(check-sat)
(exit)
