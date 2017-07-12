(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 619) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0000001001101011))
;; x should be 619
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r (fp #b0 #b11000 #b0011010110))))
(check-sat)
(exit)
