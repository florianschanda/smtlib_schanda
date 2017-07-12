(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 49150) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1011111111111110))
;; x should be 49150
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.eq r ((_ to_fp 5 11) #x79FF)))
(check-sat)
(exit)
