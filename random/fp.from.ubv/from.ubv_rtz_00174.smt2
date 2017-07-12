(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 65) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01000001))
;; x should be 65
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.geq r (fp #b0 #b10000101 #b00000100000000000000000)))
(check-sat)
(exit)
