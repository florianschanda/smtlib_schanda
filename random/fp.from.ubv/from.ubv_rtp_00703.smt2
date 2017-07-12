(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 32767) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0111111111111111))
;; x should be 32767
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7800))))
(check-sat)
(exit)
