(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 65535) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1111111111111111))
;; x should be 65535
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
