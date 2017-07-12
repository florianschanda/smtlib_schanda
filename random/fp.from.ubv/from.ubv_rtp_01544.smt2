(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 2318779451695460739) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0010000000101101111101011010000000111010110010000111000110000011))
;; x should be 2318779451695460739
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
