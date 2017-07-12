(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 4992) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0001001110000000))
;; x should be 4992
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x40B3800000000000))))
(check-sat)
(exit)
