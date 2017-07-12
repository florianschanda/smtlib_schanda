(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2282946649) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10001000000100110000000001011001))
;; x should be 2282946649
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.geq r ((_ to_fp 11 53) #x41E102600B200000)))
(check-sat)
(exit)
