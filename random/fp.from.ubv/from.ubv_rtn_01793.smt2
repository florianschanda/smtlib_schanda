(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 9612296670709189571) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1000010101100101101111001110010011010101010010101000101111000011))
;; x should be 9612296670709189571
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.geq r (fp #b0 #b10111110 #b00001010110010110111100)))
(check-sat)
(exit)
