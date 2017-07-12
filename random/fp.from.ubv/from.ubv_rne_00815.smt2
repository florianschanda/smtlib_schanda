(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 44459) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1010110110101011))
;; x should be 44459
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r ((_ to_fp 8 24) #x472DAB00)))
(check-sat)
(exit)
