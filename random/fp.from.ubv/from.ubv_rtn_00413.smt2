(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 249) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b11111001))
;; x should be 249
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x406F200000000000))))
(check-sat)
(exit)
