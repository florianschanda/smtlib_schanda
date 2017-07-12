(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 1) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00000001))
;; x should be 1
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x3FF0000000000000))))
(check-sat)
(exit)
