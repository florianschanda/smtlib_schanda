(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 1987888980849955623) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0001101110010110011001100111111011101100011110011001001100100111))
;; x should be 1987888980849955623
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
