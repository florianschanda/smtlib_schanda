(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 53646) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1101000110001110))
;; x should be 53646
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b11110 #b1010001100))))
(check-sat)
(exit)
