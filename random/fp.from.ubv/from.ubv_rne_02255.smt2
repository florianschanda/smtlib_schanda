(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 195394936867575264583702221827218032431) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10010010111111111011001000101100010111100000100100010011111100110101100011010000110100010100100000100101100101110100011100101111))
;; x should be 195394936867575264583702221827218032431
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x47E25FF6458BC122))))
(check-sat)
(exit)
