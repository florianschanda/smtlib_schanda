(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 1073741820) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00111111111111111111111111111100))
;; x should be 1073741820
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x41CFFFFFFE000000))))
(check-sat)
(exit)
