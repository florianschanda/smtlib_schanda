(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 61100) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1110111010101100))
;; x should be 61100
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x40EDD58000000000))))
(check-sat)
(exit)
