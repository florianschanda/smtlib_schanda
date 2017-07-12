(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 65534) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1111111111111110))
;; x should be 65534
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x40EFFFC000000000))))
(check-sat)
(exit)
