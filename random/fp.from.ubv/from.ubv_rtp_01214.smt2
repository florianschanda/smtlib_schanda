(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 2539400160) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b10010111010111000010101111100000))
;; x should be 2539400160
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r (_ +oo 5 11))))
(check-sat)
(exit)
