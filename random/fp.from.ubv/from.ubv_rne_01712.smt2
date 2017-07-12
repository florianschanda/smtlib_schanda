(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 9632509356126855037) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1000010110101101100011000011100101100011100100010101111101111101))
;; x should be 9632509356126855037
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10111110 #b00001011010110110001100))))
(check-sat)
(exit)
