(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 47454) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1011100101011110))
;; x should be 47454
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10000001110 #b0111001010111100000000000000000000000000000000000000))))
(check-sat)
(exit)
