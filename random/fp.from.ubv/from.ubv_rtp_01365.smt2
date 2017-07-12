(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 3221225473) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11000000000000000000000000000001))
;; x should be 3221225473
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10000011110 #b1000000000000000000000000000001000000000000000000000))))
(check-sat)
(exit)
