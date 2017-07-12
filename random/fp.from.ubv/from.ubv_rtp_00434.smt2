(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 250) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b11111010))
;; x should be 250
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.eq r ((_ to_fp 11 53) #x406F400000000000)))
(check-sat)
(exit)
