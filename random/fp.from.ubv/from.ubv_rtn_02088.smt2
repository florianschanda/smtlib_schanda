(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 85070591730234615865843651857942052865) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001))
;; x should be 85070591730234615865843651857942052865
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x47D0000000000000))))
(check-sat)
(exit)
