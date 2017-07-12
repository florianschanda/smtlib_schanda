(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 63543) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1111100000110111))
;; x should be 63543
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7BC1)))
(check-sat)
(exit)
