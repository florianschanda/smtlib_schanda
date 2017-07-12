(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 6793206560342591297) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0101111001000110010100010101111111101011000100101100011101000001))
;; x should be 6793206560342591297
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.eq r (fp #b0 #b10111101 #b01111001000110010100010)))
(check-sat)
(exit)
