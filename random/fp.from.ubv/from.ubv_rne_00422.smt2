(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 250) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b11111010))
;; x should be 250
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.eq r (fp #b0 #b10110 #b1111010000))))
(check-sat)
(exit)
