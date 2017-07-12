(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 20) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00010100))
;; x should be 20
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x41A00000))))
(check-sat)
(exit)
