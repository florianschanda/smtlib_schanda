(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 7330) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0001110010100010))
;; x should be 7330
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x6F28))))
(check-sat)
(exit)
