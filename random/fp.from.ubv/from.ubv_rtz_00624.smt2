(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 16384) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0100000000000000))
;; x should be 16384
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x46800000))))
(check-sat)
(exit)
