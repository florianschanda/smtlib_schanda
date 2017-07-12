(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 566302633) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00100001110000010001011110101001))
;; x should be 566302633
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x41C0E08BD4800000))))
(check-sat)
(exit)
