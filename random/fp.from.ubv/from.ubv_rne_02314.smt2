(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 340282366920938463463374607431768211453) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101))
;; x should be 340282366920938463463374607431768211453
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.leq r ((_ to_fp 11 53) #x47F0000000000000)))
(check-sat)
(exit)
