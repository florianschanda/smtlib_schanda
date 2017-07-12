(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 2765199439899975142) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0010011001011111111101100011110101101100010110001101110111100110))
;; x should be 2765199439899975142
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.leq r (fp #b0 #b10000111100 #b0011001011111111101100011110101101100010110001101110))))
(check-sat)
(exit)
