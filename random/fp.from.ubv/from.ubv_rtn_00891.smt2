(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 49153) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1100000000000001))
;; x should be 49153
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r (fp #b0 #b10001110 #b10000000000000100000000)))
(check-sat)
(exit)
