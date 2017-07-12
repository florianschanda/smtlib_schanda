(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 4611686018427387900) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0011111111111111111111111111111111111111111111111111111111111100))
;; x should be 4611686018427387900
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10111100 #b11111111111111111111111))))
(check-sat)
(exit)
