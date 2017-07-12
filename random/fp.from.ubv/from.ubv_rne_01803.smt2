(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 13835058055282163712) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1100000000000000000000000000000000000000000000000000000000000000))
;; x should be 13835058055282163712
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r (fp #b0 #b10000111110 #b1000000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
