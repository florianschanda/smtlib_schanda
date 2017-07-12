(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 9646466456012168506) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1000010111011111001000100010000111110000010100111001110100111010))
;; x should be 9646466456012168506
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10000111110 #b0000101110111110010001000100001111100000101001110011))))
(check-sat)
(exit)
