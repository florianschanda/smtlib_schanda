(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 15639162) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00000000111011101010001001111010))
;; x should be 15639162
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x4B6EA27A))))
(check-sat)
(exit)
