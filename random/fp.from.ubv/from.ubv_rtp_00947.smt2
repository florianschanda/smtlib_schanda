(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 53459) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1101000011010011))
;; x should be 53459
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r ((_ to_fp 8 24) #x4750D300)))
(check-sat)
(exit)
