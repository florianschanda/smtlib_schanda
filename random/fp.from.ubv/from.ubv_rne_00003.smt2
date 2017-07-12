(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 0) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b00000000))
;; x should be 0
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r (_ +zero 11 53))))
(check-sat)
(exit)
