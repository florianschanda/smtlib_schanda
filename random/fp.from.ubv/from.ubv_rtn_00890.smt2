(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 55245) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1101011111001101))
;; x should be 55245
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r ((_ to_fp 8 24) #x4757CD00)))
(check-sat)
(exit)
