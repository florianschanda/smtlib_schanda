(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 9223372036854775810) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1000000000000000000000000000000000000000000000000000000000000010))
;; x should be 9223372036854775810
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
