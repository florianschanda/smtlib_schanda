(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 252147282032961162164858822822853688101) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10111101101100011100110011010010011101001110010111010111111010010000100100100101011001110100101110011111100000010011101100100101))
;; x should be 252147282032961162164858822822853688101
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
