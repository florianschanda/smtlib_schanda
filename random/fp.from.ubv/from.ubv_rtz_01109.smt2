(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 1942685464) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01110011110010110000011100011000))
;; x should be 1942685464
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.leq r (fp #b0 #b10011101 #b11001111001011000001110)))
(check-sat)
(exit)
