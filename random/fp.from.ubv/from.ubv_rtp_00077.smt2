(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 6) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b00000110))
;; x should be 6
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.leq r (fp #b0 #b10001 #b1000000000)))
(check-sat)
(exit)
