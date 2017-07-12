(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 3333095071) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11000110101010101111111010011111))
;; x should be 3333095071
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
