(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 4155709200946602435) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0011100110101100000010111000000000011000001111101010000111000011))
;; x should be 4155709200946602435
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r (_ +oo 5 11))))
(check-sat)
(exit)
