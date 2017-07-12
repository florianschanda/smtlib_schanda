(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 1073741820) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00111111111111111111111111111100))
;; x should be 1073741820
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x4E7FFFFF))))
(check-sat)
(exit)
