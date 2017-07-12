(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 340282366920938463463374607431768211454) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110))
;; x should be 340282366920938463463374607431768211454
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
