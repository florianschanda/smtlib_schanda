(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 194) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b11000010))
;; x should be 194
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.eq r (fp #b0 #b10110 #b1000010000)))
(check-sat)
(exit)
