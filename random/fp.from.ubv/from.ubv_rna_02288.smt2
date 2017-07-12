(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 302694370480225078818139399712059362168) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11100011101110001101000010110001101000110010100110101101101100100000100101111110110110010011110101100010010111110000101101111000))
;; x should be 302694370480225078818139399712059362168
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r (fp #b0 #b11111110 #b11000111011100011010001))))
(check-sat)
(exit)
