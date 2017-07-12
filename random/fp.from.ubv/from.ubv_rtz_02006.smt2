(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 15891653536166437760594963894183955874) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b00001011111101001001111100000011000110101001111010100100011011110111001111110100001100100111111111001101000001001000110110100010))
;; x should be 15891653536166437760594963894183955874
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.geq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
