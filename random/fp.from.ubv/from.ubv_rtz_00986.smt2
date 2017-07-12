(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 747012416) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00101100100001101000000101000000))
;; x should be 747012416
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10000011100 #b0110010000110100000010100000000000000000000000000000))))
(check-sat)
(exit)
