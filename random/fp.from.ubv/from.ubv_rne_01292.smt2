(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 2796274871) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10100110101010111100010010110111))
;; x should be 2796274871
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.eq r (fp #b0 #b10011110 #b01001101010101111000101))))
(check-sat)
(exit)
