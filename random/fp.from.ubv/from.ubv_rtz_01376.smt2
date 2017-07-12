(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 4070494449) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11110010100111101101000011110001))
;; x should be 4070494449
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.geq r ((_ to_fp 11 53) #x41EE53DA1E200000)))
(check-sat)
(exit)
