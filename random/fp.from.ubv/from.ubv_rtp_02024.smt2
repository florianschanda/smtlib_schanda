(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 4879043731903412791786343006193310947) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b00000011101010111010101101101101101011011110110011100000000010000110111001011110111010000110010011100010001111111101110011100011))
;; x should be 4879043731903412791786343006193310947
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r (_ +oo 5 11))))
(check-sat)
(exit)
