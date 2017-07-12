(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 3512384806) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11010001010110101011110100100110))
;; x should be 3512384806
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.eq r (fp #b0 #b10011110 #b10100010101101010111101))))
(check-sat)
(exit)
