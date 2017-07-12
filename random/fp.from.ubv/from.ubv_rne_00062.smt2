(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 18) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b00010010))
;; x should be 18
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x4C80))))
(check-sat)
(exit)
