(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 4294967295) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11111111111111111111111111111111))
;; x should be 4294967295
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.eq r ((_ to_fp 11 53) #x41EFFFFFFFE00000)))
(check-sat)
(exit)
