(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 65534) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1111111111111110))
;; x should be 65534
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
