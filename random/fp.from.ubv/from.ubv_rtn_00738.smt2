(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 32768) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1000000000000000))
;; x should be 32768
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r (fp #b0 #b10001110 #b00000000000000000000000)))
(check-sat)
(exit)
