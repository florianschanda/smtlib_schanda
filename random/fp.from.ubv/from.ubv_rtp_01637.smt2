(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 8838037348659383318) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0111101010100111000001000010010010000110011110100100110000010110))
;; x should be 8838037348659383318
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.eq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
