(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 1138992771) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01000011111000111010011010000011))
;; x should be 1138992771
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r (fp #b0 #b10000011101 #b0000111110001110100110100000110000000000000000000000)))
(check-sat)
(exit)
