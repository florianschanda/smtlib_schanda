(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 2959331674) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10110000011000111101000101011010))
;; x should be 2959331674
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10000011110 #b0110000011000111101000101011010000000000000000000000))))
(check-sat)
(exit)
