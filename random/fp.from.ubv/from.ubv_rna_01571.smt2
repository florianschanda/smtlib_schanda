(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 5431621727302839356) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0100101101100000111111110010111011011010001011011110110000111100))
;; x should be 5431621727302839356
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.geq r (_ +oo 5 11)))
(check-sat)
(exit)
