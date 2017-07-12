(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 1434740571) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01010101100001000110011101011011))
;; x should be 1434740571
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r (_ +oo 5 11))))
(check-sat)
(exit)
