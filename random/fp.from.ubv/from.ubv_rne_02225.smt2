(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 173187740502402231571698547521317903034) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10000010010010101011111011011011111011110011101111100000111110101101110111010110000010010101110000000011010011100001101010111010))
;; x should be 173187740502402231571698547521317903034
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
