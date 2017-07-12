(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 35478298816718692685051266236434436148) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b00011010101100001101111100101110101110010110000010111001101000110110111100111111111011110001101100010000101110010101000000110100))
;; x should be 35478298816718692685051266236434436148
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.geq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
