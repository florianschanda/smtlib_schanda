(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 49153) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1100000000000001))
;; x should be 49153
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.eq r (fp #b0 #b11110 #b1000000000)))
(check-sat)
(exit)
