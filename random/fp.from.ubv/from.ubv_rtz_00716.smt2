(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 28959) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0111000100011111))
;; x should be 28959
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.eq r ((_ to_fp 8 24) #x46E23E00)))
(check-sat)
(exit)
