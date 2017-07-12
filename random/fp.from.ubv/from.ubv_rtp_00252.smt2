(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 128) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b10000000))
;; x should be 128
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x5800))))
(check-sat)
(exit)
