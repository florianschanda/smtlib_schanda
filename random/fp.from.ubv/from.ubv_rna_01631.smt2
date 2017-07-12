(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 5747430450869311642) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0100111111000010111110011000101100111011010101000001100010011010))
;; x should be 5747430450869311642
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.eq r (fp #b0 #b10000111101 #b0011111100001011111001100010110011101101010100000110)))
(check-sat)
(exit)
