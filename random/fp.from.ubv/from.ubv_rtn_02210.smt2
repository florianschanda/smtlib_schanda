(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 176960255878081073402298186923106474757) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10000101001000010100111000111010001111011111001110011110010110000101011010010111001101111101111111110100000101011001101100000101))
;; x should be 176960255878081073402298186923106474757
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
