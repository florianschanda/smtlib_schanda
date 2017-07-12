(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 60) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b00111100))
;; x should be 60
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x404E000000000000))))
(check-sat)
(exit)
