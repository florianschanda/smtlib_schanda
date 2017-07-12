(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 3369975199) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11001000110111011011110110011111))
;; x should be 3369975199
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.leq r (fp #b0 #b10000011110 #b1001000110111011011110110011111000000000000000000000)))
(check-sat)
(exit)
