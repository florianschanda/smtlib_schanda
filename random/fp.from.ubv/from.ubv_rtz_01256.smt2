(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 3206919189) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b10111111001001011011010000010101))
;; x should be 3206919189
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10011110 #b01111110010010110110100))))
(check-sat)
(exit)
