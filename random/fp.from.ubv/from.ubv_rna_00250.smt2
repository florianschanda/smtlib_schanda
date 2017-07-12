(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 188) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b10111100))
;; x should be 188
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x59E0))))
(check-sat)
(exit)
