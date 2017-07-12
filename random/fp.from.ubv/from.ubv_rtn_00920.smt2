(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 52234) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1100110000001010))
;; x should be 52234
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r (fp #b0 #b10001110 #b10011000000101000000000)))
(check-sat)
(exit)
