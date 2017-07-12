(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 16382) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0011111111111110))
;; x should be 16382
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x40CFFF0000000000))))
(check-sat)
(exit)
