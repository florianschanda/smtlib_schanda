(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 3604570108) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11010110110110010101111111111100))
;; x should be 3604570108
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10000011110 #b1010110110110010101111111111100000000000000000000000))))
(check-sat)
(exit)
