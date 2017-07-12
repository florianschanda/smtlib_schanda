(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 16387) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0100000000000011))
;; x should be 16387
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.geq r (fp #b0 #b10000001101 #b0000000000001100000000000000000000000000000000000000)))
(check-sat)
(exit)
