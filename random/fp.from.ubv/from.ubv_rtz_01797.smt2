(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 9223372036854775811) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1000000000000000000000000000000000000000000000000000000000000011))
;; x should be 9223372036854775811
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
