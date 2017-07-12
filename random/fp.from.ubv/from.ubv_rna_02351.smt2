(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 338873729331574443095402631043096070646) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11111110111100001011010011001110000001001001110010100110001111010010010001110000001101001011100101111110010001010100100111110110))
;; x should be 338873729331574443095402631043096070646
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.geq r (fp #b0 #b11111110 #b11111101111000010110101))))
(check-sat)
(exit)
