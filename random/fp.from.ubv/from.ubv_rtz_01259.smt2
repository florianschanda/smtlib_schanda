(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 2895754629) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b10101100100110011011010110000101))
;; x should be 2895754629
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10011110 #b01011001001100110110101))))
(check-sat)
(exit)
