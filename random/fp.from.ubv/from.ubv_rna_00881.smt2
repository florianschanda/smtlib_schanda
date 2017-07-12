(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 60897) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1110110111100001))
;; x should be 60897
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7B6F)))
(check-sat)
(exit)
