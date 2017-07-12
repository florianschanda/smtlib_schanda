(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 3221225471) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10111111111111111111111111111111))
;; x should be 3221225471
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.eq r (fp #b0 #b10011110 #b01111111111111111111111)))
(check-sat)
(exit)
