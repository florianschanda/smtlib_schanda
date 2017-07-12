(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 2234897123) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10000101001101011101001011100011))
;; x should be 2234897123
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r (fp #b0 #b10011110 #b00001010011010111010010)))
(check-sat)
(exit)
