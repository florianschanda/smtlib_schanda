(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 16384) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0100000000000000))
;; x should be 16384
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10000001101 #b0000000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
