(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 45989) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1011001110100101))
;; x should be 45989
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x799D))))
(check-sat)
(exit)
