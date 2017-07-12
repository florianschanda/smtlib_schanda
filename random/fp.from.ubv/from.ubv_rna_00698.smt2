(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 23251) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0101101011010011))
;; x should be 23251
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r (fp #b0 #b11101 #b0110101101))))
(check-sat)
(exit)
