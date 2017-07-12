(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 2) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00000010))
;; x should be 2
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x4000))))
(check-sat)
(exit)
