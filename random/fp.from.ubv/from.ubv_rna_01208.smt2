(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 2416377520) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b10010000000001101111111010110000))
;; x should be 2416377520
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r (fp #b0 #b10011110 #b00100000000011011111111)))
(check-sat)
(exit)
