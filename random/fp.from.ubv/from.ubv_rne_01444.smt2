(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 4611686018427387900) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0011111111111111111111111111111111111111111111111111111111111100))
;; x should be 4611686018427387900
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
