(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 306827494887531774002453605983926682613) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11100110110101001101001101110101110100011001101110000000000001001100100111011000000100100100010111100101011110010000001111110101))
;; x should be 306827494887531774002453605983926682613
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.leq r (fp #b0 #b10001111110 #b1100110110101001101001101110101110100011001101110000)))
(check-sat)
(exit)
