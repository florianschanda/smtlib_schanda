(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 60) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b00111100))
;; x should be 60
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x5380))))
(check-sat)
(exit)
