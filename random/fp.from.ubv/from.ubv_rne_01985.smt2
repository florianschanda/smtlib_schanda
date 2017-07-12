(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 22752490393381197349671777638074524734) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00010001000111011111100001100010101011110001111111101111101110100000111100000100110001001010101010100110111011111010010000111110))
;; x should be 22752490393381197349671777638074524734
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
