(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 2147483647) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01111111111111111111111111111111))
;; x should be 2147483647
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
