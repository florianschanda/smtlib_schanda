(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 4611686018427387903) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0011111111111111111111111111111111111111111111111111111111111111))
;; x should be 4611686018427387903
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.leq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
