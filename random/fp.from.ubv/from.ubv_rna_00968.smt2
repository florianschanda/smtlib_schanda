(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 664799764) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00100111101000000000101000010100))
;; x should be 664799764
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10000011100 #b0011110100000000010100001010000000000000000000000000))))
(check-sat)
(exit)
