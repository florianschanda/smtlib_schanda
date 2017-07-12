(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 1073741824) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01000000000000000000000000000000))
;; x should be 1073741824
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x41D0000000000000))))
(check-sat)
(exit)
