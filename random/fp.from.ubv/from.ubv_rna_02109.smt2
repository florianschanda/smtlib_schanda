(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 85070591730234615865843651857942052866) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010))
;; x should be 85070591730234615865843651857942052866
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x47D0000000000000))))
(check-sat)
(exit)
