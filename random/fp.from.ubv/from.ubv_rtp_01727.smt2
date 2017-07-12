(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 12606655741960672577) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1010111011110011110101101001101010111001001101000101010101000001))
;; x should be 12606655741960672577
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.eq r ((_ to_fp 11 53) #x43E5DE7AD357268B)))
(check-sat)
(exit)
