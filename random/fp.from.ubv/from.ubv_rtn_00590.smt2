(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 4535) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0001000110110111))
;; x should be 4535
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.leq r ((_ to_fp 11 53) #x40B1B70000000000)))
(check-sat)
(exit)
