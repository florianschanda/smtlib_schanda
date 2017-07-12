(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 14363558799191940881239253749168748507) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00001010110011100101001000011111111100011100010100000101001100011010110001101001010101001101110110100100000001100011011111011011))
;; x should be 14363558799191940881239253749168748507
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.leq r (fp #b0 #b11111010 #b01011001110010100100001)))
(check-sat)
(exit)
