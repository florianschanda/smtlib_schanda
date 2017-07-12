(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 32764) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0111111111111100))
;; x should be 32764
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x46FFF800))))
(check-sat)
(exit)
