(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 9223372036854775809) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1000000000000000000000000000000000000000000000000000000000000001))
;; x should be 9223372036854775809
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x5F000000))))
(check-sat)
(exit)
