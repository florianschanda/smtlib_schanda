(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 1006177859292311801) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0000110111110110101010010110111010011011111110110011000011111001))
;; x should be 1006177859292311801
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.eq r (fp #b0 #b10000111010 #b1011111011010101001011011101001101111111011001100001)))
(check-sat)
(exit)
