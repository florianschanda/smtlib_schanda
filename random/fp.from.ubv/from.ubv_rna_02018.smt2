(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 9176725743006922098926490393589284539) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00000110111001110101111110000010110100110101001110011010100101010110110111110111010011101011001011101100001110110111111010111011))
;; x should be 9176725743006922098926490393589284539
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
