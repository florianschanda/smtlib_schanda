(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 16428766120913200268286200339608300163) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00001100010111000001000010110101000001010101101101101000110010011001000011101010110100010000010111100011101000101110101010000011))
;; x should be 16428766120913200268286200339608300163
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.eq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
