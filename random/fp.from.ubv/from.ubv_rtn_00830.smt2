(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 38623) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1001011011011111))
;; x should be 38623
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x4716DF00))))
(check-sat)
(exit)
