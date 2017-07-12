(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 9336782534553078431) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1000000110010010111010100011111100101101000110111000101010011111))
;; x should be 9336782534553078431
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.eq r (fp #b0 #b10111110 #b00000011001001011101010))))
(check-sat)
(exit)
