(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 9223372036854775808) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1000000000000000000000000000000000000000000000000000000000000000))
;; x should be 9223372036854775808
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x5F000000))))
(check-sat)
(exit)
