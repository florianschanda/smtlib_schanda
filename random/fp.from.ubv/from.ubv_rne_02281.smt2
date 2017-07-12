(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 340282366920938463463374607431768211452) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100))
;; x should be 340282366920938463463374607431768211452
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.leq r (fp #b0 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)
