(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 95344143413655173761308322838198057547) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b01000111101110101001110100110100011111100011101100000001011101111100000001000001011001010011101111100000010100110111101001001011))
;; x should be 95344143413655173761308322838198057547
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
