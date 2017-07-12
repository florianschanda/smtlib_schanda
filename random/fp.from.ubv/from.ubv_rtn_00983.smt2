(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 695138384) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00101001011011101111100001010000))
;; x should be 695138384
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r (fp #b0 #b10011100 #b01001011011101111100001)))
(check-sat)
(exit)
