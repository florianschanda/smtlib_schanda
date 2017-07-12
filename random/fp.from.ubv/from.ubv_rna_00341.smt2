(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 171) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10101011))
;; x should be 171
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r (fp #b0 #b10000110 #b01010110000000000000000)))
(check-sat)
(exit)
