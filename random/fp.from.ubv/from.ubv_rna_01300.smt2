(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 3221225471) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10111111111111111111111111111111))
;; x should be 3221225471
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x41E7FFFFFFE00000))))
(check-sat)
(exit)
