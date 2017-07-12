(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 49155) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1100000000000011))
;; x should be 49155
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.eq r ((_ to_fp 11 53) #x40E8006000000000)))
(check-sat)
(exit)
