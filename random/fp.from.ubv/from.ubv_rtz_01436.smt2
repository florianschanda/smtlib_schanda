(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 3940171535) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11101010110110100011111100001111))
;; x should be 3940171535
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10000011110 #b1101010110110100011111100001111000000000000000000000))))
(check-sat)
(exit)
