(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 95874148816543263914061661997045482440) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01001000001000001011000001111101001010011101010001100011111011110011110001100000101101011010001011001110011100011000001111001000))
;; x should be 95874148816543263914061661997045482440
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
