(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 4611686018427387900) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0011111111111111111111111111111111111111111111111111111111111100))
;; x should be 4611686018427387900
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10000111100 #b1111111111111111111111111111111111111111111111111111))))
(check-sat)
(exit)
