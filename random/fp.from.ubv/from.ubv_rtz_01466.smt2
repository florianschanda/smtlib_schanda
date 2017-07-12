(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 3452035809144601904) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0010111111101000000110000100011101011011111111011111110100110000))
;; x should be 3452035809144601904
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x43C7F40C23ADFEFE))))
(check-sat)
(exit)
