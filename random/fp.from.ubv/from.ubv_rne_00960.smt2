(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 0) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00000000000000000000000000000000))
;; x should be 0
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x0000))))
(check-sat)
(exit)
