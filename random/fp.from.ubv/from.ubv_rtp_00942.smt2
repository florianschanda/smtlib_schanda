(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 49155) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1100000000000011))
;; x should be 49155
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.eq r (fp #b0 #b11110 #b1000000001)))
(check-sat)
(exit)
