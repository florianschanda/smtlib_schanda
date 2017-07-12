(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 167) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b10100111))
;; x should be 167
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x4064E00000000000))))
(check-sat)
(exit)
