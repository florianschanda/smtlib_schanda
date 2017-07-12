(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 16049295415321516152) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1101111010111010100011010010010110111101100010110101100001111000))
;; x should be 16049295415321516152
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10000111110 #b1011110101110101000110100100101101111011000101101011))))
(check-sat)
(exit)
