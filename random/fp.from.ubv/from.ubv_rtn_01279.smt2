(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 3221225470) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10111111111111111111111111111110))
;; x should be 3221225470
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10011110 #b01111111111111111111111))))
(check-sat)
(exit)
