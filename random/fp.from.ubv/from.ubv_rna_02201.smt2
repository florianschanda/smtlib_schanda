(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 219092629942813155882975305360835129073) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10100100110100111011010010100110001001001001110111111111101111101011010001001101101100100111000010101010100001001010111011110001))
;; x should be 219092629942813155882975305360835129073
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.eq r (fp #b0 #b11111110 #b01001001101001110110101)))
(check-sat)
(exit)
