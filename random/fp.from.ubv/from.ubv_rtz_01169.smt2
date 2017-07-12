(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 1576852754) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01011101111111001101110100010010))
;; x should be 1576852754
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x41D77F3744800000))))
(check-sat)
(exit)
