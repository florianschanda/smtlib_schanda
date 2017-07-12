(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 6642) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0001100111110010))
;; x should be 6642
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x6E7C))))
(check-sat)
(exit)
