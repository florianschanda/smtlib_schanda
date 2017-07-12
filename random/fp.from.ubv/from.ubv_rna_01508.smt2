(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 3209789802009518030) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0010110010001011011101101101000110011000011100101101111111001110))
;; x should be 3209789802009518030
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r (fp #b0 #b10111100 #b01100100010110111011011)))
(check-sat)
(exit)
