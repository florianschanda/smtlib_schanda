(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 17655) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0100010011110111))
;; x should be 17655
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10001101 #b00010011110111000000000))))
(check-sat)
(exit)
