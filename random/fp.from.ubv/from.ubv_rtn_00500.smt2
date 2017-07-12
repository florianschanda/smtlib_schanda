(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 6296) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0001100010011000))
;; x should be 6296
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.leq r (fp #b0 #b10000001011 #b1000100110000000000000000000000000000000000000000000)))
(check-sat)
(exit)
