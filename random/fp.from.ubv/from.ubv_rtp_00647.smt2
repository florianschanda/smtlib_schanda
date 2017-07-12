(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 22497) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0101011111100001))
;; x should be 22497
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.leq r (fp #b0 #b11101 #b0101111111)))
(check-sat)
(exit)
