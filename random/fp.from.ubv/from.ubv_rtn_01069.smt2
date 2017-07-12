(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 1073741823) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00111111111111111111111111111111))
;; x should be 1073741823
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
