(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 61644565901199647083215002661084757716) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00101110011000000100111111000000111100001011111111001110011110101000100110100000111010000010100011010010100001000111111011010100))
;; x should be 61644565901199647083215002661084757716
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.eq r (_ +oo 5 11))))
(check-sat)
(exit)
