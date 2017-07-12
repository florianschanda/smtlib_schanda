(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 510299217) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00011110011010101000110001010001))
;; x should be 510299217
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x41BE6A8C51000000))))
(check-sat)
(exit)
