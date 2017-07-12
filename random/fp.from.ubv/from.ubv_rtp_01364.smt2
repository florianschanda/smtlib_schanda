(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 4133939065) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11110110011001101110011101111001))
;; x should be 4133939065
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x4F7666E8))))
(check-sat)
(exit)
