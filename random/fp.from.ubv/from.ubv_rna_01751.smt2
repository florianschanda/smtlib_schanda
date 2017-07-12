(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 13293280804422383250) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1011100001111011001110000111010111110111000111010111011010010010))
;; x should be 13293280804422383250
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.geq r ((_ to_fp 11 53) #x43E70F670EBEE3AF)))
(check-sat)
(exit)
