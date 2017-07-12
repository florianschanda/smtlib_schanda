(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 31289) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0111101000111001))
;; x should be 31289
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.leq r ((_ to_fp 8 24) #x46F47200)))
(check-sat)
(exit)
