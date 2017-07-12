(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 59) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b00111011))
;; x should be 59
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.eq r ((_ to_fp 8 24) #x426C0000)))
(check-sat)
(exit)
