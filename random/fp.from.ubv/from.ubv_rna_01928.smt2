(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 46533668375982773727521409026123454340) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00100011000000100000111011111100001000100010000011100010000111111101101101010100110110100001100100101100111000010101011110000100))
;; x should be 46533668375982773727521409026123454340
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
