(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 16387) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0100000000000011))
;; x should be 16387
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7400)))
(check-sat)
(exit)
