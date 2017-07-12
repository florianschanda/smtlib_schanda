(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 261007019014187261448610099495242226309) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b11000100010111000001111110010100100111011111101100101001000100111100100111011100011011010100010100011110101011101101101010000101))
;; x should be 261007019014187261448610099495242226309
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r (fp #b0 #b10001111110 #b1000100010111000001111110010100100111011111101100101)))
(check-sat)
(exit)
