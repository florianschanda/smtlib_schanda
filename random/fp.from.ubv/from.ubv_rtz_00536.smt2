(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 15897) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0011111000011001))
;; x should be 15897
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.leq r (fp #b0 #b11100 #b1111000011)))
(check-sat)
(exit)
