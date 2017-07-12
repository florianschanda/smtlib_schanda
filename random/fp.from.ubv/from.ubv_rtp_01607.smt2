(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 6768640933271399773) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0101110111101111000010110001000100100111110011110110110101011101))
;; x should be 6768640933271399773
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
