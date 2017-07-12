(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 88221585120130319519529531398162251342) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b01000010010111101101101111110111111101110110010001111000001001001101101100011001010101000110111111001011111111000111111001001110))
;; x should be 88221585120130319519529531398162251342
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x7E84BDB7))))
(check-sat)
(exit)
