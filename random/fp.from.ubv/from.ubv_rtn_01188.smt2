(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 1073741827) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01000000000000000000000000000011))
;; x should be 1073741827
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
