(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 189037534235184490511805648851818981017) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10001110001101110100111000000110000010100100110111011000110010001110111001111001011010110100110000101001001110110010011010011001))
;; x should be 189037534235184490511805648851818981017
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.geq r (_ +oo 5 11)))
(check-sat)
(exit)
