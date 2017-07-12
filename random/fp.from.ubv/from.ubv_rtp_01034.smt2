(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 566361742) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00100001110000011111111010001110))
;; x should be 566361742
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r (_ +oo 5 11))))
(check-sat)
(exit)
