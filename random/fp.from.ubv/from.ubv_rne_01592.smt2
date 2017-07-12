(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 5316438662208934669) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0100100111000111110010001100101110101011000111011101001100001101))
;; x should be 5316438662208934669
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.leq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
