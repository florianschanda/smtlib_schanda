(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 3) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011))
;; x should be 3
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x4200))))
(check-sat)
(exit)
