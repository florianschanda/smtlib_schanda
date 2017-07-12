(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 2147483644) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01111111111111111111111111111100))
;; x should be 2147483644
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
