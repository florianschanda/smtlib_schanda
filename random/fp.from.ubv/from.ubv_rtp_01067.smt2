(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 883141235) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00110100101000111010101001110011))
;; x should be 883141235
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.eq r ((_ to_fp 8 24) #x4E528EAA)))
(check-sat)
(exit)
