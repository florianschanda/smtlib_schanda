(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 62689) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1111010011100001))
;; x should be 62689
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r (fp #b0 #b11110 #b1110100111))))
(check-sat)
(exit)
