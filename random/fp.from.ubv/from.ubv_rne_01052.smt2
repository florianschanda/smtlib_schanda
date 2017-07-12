(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 514434203) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00011110101010011010010010011011))
;; x should be 514434203
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10011011 #b11101010100110100100101))))
(check-sat)
(exit)
