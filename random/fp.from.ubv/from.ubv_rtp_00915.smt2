(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 49154) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1100000000000010))
;; x should be 49154
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7A01))))
(check-sat)
(exit)
