(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 778) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0000001100001010))
;; x should be 778
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r ((_ to_fp 8 24) #x44428000)))
(check-sat)
(exit)
