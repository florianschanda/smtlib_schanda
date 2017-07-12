(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 255704543852816790574020664130468074724) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b11000000010111101110011101011110111011001111110110000101001001001011110110101011110000011100110000110000000111000101010011100100))
;; x should be 255704543852816790574020664130468074724
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
