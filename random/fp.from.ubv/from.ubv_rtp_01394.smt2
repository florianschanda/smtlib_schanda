(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 4107404058) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11110100110100100000001100011010))
;; x should be 4107404058
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.eq r (fp #b0 #b10011110 #b11101001101001000000100)))
(check-sat)
(exit)
