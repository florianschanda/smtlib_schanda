(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 4108296302) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11110100110111111010000001101110))
;; x should be 4108296302
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x41EE9BF40DC00000))))
(check-sat)
(exit)
