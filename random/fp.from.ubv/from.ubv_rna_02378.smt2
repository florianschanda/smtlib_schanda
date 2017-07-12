(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 334526948199915246172637076172586414551) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11111011101010111000101111110010110110000100110011011010000111100001110111001100110101111100111110000001110100001111000111010111))
;; x should be 334526948199915246172637076172586414551
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x7F7BAB8C))))
(check-sat)
(exit)
