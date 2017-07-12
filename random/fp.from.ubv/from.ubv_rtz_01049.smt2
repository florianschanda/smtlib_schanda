(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 562550378) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b00100001100001111101011001101010))
;; x should be 562550378
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.leq r (fp #b0 #b10011100 #b00001100001111101011001)))
(check-sat)
(exit)
