(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 50639) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1100010111001111))
;; x should be 50639
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.eq r (fp #b0 #b10001110 #b10001011100111100000000)))
(check-sat)
(exit)
