(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 16851247209017928321) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1110100111011011101010000000111000001011110011100110101010000001))
;; x should be 16851247209017928321
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x5F69DBA9))))
(check-sat)
(exit)
