(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 3221225472) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11000000000000000000000000000000))
;; x should be 3221225472
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x4F400000))))
(check-sat)
(exit)
