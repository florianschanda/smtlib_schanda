(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 1097229445) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01000001011001100110010010000101))
;; x should be 1097229445
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r ((_ to_fp 8 24) #x4E82CCC9)))
(check-sat)
(exit)
