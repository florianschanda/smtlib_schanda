(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 16387) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0100000000000011))
;; x should be 16387
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10001101 #b00000000000011000000000))))
(check-sat)
(exit)
