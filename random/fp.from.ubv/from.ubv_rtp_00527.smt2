(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 11213) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0010101111001101))
;; x should be 11213
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x717A))))
(check-sat)
(exit)
