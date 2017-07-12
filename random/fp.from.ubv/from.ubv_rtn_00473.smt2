(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 239) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b11101111))
;; x should be 239
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.eq r ((_ to_fp 5 11) #x5B78)))
(check-sat)
(exit)
