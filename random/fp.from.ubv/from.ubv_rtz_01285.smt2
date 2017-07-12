(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 3221225470) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10111111111111111111111111111110))
;; x should be 3221225470
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.geq r ((_ to_fp 8 24) #x4F3FFFFF)))
(check-sat)
(exit)
