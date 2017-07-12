(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 9117479227553590019) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0111111010000111110010110000110100001101010101011010101100000011))
;; x should be 9117479227553590019
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r (fp #b0 #b10000111101 #b1111101000011111001011000011010000110101010101101010)))
(check-sat)
(exit)
