(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 10659305887485054460) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1001001111101101011101100011101010101111110001101100110111111100))
;; x should be 10659305887485054460
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
