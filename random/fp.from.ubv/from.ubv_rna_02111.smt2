(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 130088886023669668483460309046544544526) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01100001110111100011010101000110001101001000100000010011101101111111111001010100000001101010100101100110010110111011001100001110))
;; x should be 130088886023669668483460309046544544526
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r (_ +oo 5 11))))
(check-sat)
(exit)
