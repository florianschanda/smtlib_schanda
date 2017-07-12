(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 22432) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0101011110100000))
;; x should be 22432
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x757A))))
(check-sat)
(exit)
