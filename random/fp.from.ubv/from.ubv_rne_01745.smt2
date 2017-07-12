(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 11773544404969821442) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1010001101100100000010000100000111100101100000111001010100000010))
;; x should be 11773544404969821442
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10111110 #b01000110110010000001000))))
(check-sat)
(exit)
