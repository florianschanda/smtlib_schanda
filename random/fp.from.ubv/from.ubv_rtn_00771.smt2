(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 32769) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1000000000000001))
;; x should be 32769
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x47000100))))
(check-sat)
(exit)
