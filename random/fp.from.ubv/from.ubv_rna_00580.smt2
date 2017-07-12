(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 16383) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0011111111111111))
;; x should be 16383
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7400))))
(check-sat)
(exit)
