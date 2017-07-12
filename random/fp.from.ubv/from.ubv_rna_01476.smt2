(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 1) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0000000000000000000000000000000000000000000000000000000000000001))
;; x should be 1
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.geq r (fp #b0 #b01111111 #b00000000000000000000000)))
(check-sat)
(exit)
