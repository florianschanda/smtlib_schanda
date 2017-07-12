(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 130854314525112161001175742348585686905) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b01100010011100011001111111010000001000100011100011010010111100101001101000010000010011001000110110000101011101010101011101111001))
;; x should be 130854314525112161001175742348585686905
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x47D89C67F4088E34))))
(check-sat)
(exit)
