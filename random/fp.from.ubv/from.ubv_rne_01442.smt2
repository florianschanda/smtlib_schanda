(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 264180643528425388) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0000001110101010100011101110010101000110000010111011111110101100))
;; x should be 264180643528425388
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x5C6AA3B9))))
(check-sat)
(exit)
