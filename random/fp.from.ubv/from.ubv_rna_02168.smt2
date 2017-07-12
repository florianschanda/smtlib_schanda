(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 224371280387930184011524821749524612456) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10101000110011000101011000110101101000111000001100110110111010110001100010100001111100111001001110001101000111000100010101101000))
;; x should be 224371280387930184011524821749524612456
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r ((_ to_fp 8 24) #x7F28CC56)))
(check-sat)
(exit)
