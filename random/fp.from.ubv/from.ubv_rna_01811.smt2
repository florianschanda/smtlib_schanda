(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 15469180401704926036) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1101011010101101100100011001110110111010000011100111101101010100))
;; x should be 15469180401704926036
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x5F56AD92))))
(check-sat)
(exit)
