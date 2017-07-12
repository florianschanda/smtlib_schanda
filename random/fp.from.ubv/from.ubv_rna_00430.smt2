(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 254) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b11111110))
;; x should be 254
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x406FC00000000000))))
(check-sat)
(exit)
