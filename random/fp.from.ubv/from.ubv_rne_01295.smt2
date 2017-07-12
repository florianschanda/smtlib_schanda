(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 2822150215) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b10101000001101101001100001000111))
;; x should be 2822150215
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x41E506D308E00000))))
(check-sat)
(exit)
