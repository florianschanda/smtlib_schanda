(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 16) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00010000))
;; x should be 16
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.geq r ((_ to_fp 11 53) #x4030000000000000)))
(check-sat)
(exit)
