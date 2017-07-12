(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 49579) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1100000110101011))
;; x should be 49579
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x40E8356000000000))))
(check-sat)
(exit)
