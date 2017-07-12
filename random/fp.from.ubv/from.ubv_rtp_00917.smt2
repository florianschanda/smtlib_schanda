(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 52582) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1100110101100110))
;; x should be 52582
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10001110 #b10011010110011000000000))))
(check-sat)
(exit)
