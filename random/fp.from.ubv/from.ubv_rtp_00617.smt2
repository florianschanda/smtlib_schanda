(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 27360) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0110101011100000))
;; x should be 27360
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10000001101 #b1010101110000000000000000000000000000000000000000000))))
(check-sat)
(exit)
