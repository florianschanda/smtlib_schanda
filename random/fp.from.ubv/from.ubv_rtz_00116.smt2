(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 31) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00011111))
;; x should be 31
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.geq r ((_ to_fp 5 11) #x4FC0)))
(check-sat)
(exit)
