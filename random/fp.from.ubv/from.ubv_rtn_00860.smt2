(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 50972) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1100011100011100))
;; x should be 50972
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10001110 #b10001110001110000000000))))
(check-sat)
(exit)
