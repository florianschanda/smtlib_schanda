(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 10338166377231167758) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1000111101111000100010111000101111001111110000000011000100001110))
;; x should be 10338166377231167758
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r (_ +oo 5 11))))
(check-sat)
(exit)
