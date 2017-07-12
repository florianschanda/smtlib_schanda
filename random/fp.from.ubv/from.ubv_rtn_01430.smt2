(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 4249296103) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11111101010001110001110011100111))
;; x should be 4249296103
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x41EFA8E39CE00000))))
(check-sat)
(exit)
