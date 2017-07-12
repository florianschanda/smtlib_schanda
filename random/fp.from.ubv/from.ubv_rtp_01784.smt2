(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 11653339049270390407) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1010000110111000111110100001111110001110111100110010111010000111))
;; x should be 11653339049270390407
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x43E4371F43F1DE66))))
(check-sat)
(exit)
