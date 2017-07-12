(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 16385) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0100000000000001))
;; x should be 16385
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.eq r (fp #b0 #b11101 #b0000000000)))
(check-sat)
(exit)
