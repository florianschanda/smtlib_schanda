(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 2169215337) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10000001010010111001100101101001))
;; x should be 2169215337
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r ((_ to_fp 8 24) #x4F014B99)))
(check-sat)
(exit)
