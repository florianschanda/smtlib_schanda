(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 14333521372331735974) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1100011011101010111001011011111011110010010011010111101110100110))
;; x should be 14333521372331735974
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10000111110 #b1000110111010101110010110111110111100100100110101111))))
(check-sat)
(exit)
