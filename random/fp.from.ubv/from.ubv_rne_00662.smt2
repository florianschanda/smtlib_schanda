(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 28250) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0110111001011010))
;; x should be 28250
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x76E6))))
(check-sat)
(exit)
