(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 4611686018427387903) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0011111111111111111111111111111111111111111111111111111111111111))
;; x should be 4611686018427387903
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.eq r (fp #b0 #b10111101 #b00000000000000000000000))))
(check-sat)
(exit)
