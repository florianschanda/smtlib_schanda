(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 39625) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1001101011001001))
;; x should be 39625
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10001110 #b00110101100100100000000))))
(check-sat)
(exit)
