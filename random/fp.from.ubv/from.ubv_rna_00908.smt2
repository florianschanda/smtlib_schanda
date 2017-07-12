(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 53026) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1100111100100010))
;; x should be 53026
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.geq r (fp #b0 #b11110 #b1001111001))))
(check-sat)
(exit)
