(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 337672741498295071656844274384522228841) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11111110000010010110011110001000011011011100101111100010101010110110011111110010011101101111110100100100000010001011010001101001))
;; x should be 337672741498295071656844274384522228841
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r (fp #b0 #b11111110 #b11111100000100101101000)))
(check-sat)
(exit)
