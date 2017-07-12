(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 42447729149626010920917677337148884791) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b00011111111011110010001010100000101010100011000010100110111110010011000100111000111011011011011001001110110011111000011100110111))
;; x should be 42447729149626010920917677337148884791
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.geq r (fp #b0 #b11111011 #b11111110111100100010101))))
(check-sat)
(exit)
