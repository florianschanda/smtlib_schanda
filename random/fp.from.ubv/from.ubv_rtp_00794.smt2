(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 47474) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1011100101110010))
;; x should be 47474
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10001110 #b01110010111001000000000))))
(check-sat)
(exit)
