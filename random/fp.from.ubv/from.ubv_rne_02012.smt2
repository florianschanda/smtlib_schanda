(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 45271439267723838501485008587034633227) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00100010000011101111011001001000111110110111100011111110110100001110010010110000010100001100100001000000101010101010010000001011))
;; x should be 45271439267723838501485008587034633227
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x47C1077B247DBC7F))))
(check-sat)
(exit)
