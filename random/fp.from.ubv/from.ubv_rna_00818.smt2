(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 34215) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1000010110100111))
;; x should be 34215
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.leq r (fp #b0 #b10000001110 #b0000101101001110000000000000000000000000000000000000)))
(check-sat)
(exit)
