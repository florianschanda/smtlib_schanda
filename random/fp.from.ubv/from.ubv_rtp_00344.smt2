(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 163) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b10100011))
;; x should be 163
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.geq r ((_ to_fp 5 11) #x5918)))
(check-sat)
(exit)
