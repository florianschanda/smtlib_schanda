(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 13835058055282163712) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1100000000000000000000000000000000000000000000000000000000000000))
;; x should be 13835058055282163712
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10111110 #b10000000000000000000000))))
(check-sat)
(exit)
