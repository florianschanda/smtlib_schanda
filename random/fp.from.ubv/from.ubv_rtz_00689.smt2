(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 31434) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0111101011001010))
;; x should be 31434
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x77AC))))
(check-sat)
(exit)
