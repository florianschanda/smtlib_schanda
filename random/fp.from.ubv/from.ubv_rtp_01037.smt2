(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 194236706) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00001011100100111101000100100010))
;; x should be 194236706
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10011010 #b01110010011110100010011))))
(check-sat)
(exit)
