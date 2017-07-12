(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 41353696971475040069094870694440527830) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00011111000111000110111010101101001111000000010100000010010100100111001010010011111011001110000101110011101011001110011111010110))
;; x should be 41353696971475040069094870694440527830
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.eq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
