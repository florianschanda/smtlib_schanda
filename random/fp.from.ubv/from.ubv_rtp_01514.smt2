(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 120195004339107142) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0000000110101011000001001011100000111001011010001011010101000110))
;; x should be 120195004339107142
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.eq r (_ +oo 5 11)))
(check-sat)
(exit)
