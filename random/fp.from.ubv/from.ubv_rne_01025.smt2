(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 600860074) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b00100011110100000110010110101010))
;; x should be 600860074
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r (fp #b0 #b10011100 #b00011110100000110010111)))
(check-sat)
(exit)
