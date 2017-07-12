(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 8795367652058107027) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0111101000001111011011000100011110011001111000101000110010010011))
;; x should be 8795367652058107027
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.leq r (_ +oo 5 11)))
(check-sat)
(exit)
