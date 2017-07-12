(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 272041507159641361) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0000001111000110011111000100111100110110011010011000110100010001))
;; x should be 272041507159641361
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.geq r (fp #b0 #b10111000 #b11100011001111100010011)))
(check-sat)
(exit)
