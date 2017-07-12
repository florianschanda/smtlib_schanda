(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 733735338) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b00101011101110111110100110101010))
;; x should be 733735338
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x4E2EEFA7))))
(check-sat)
(exit)
