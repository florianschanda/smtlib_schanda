(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 32770) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1000000000000010))
;; x should be 32770
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x47000200))))
(check-sat)
(exit)
