(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 2851122906775612205) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0010011110010001001110010010110110000101010101101110101100101101))
;; x should be 2851122906775612205
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10000111100 #b0011110010001001110010010110110000101010101101110110))))
(check-sat)
(exit)
