(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 129) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b10000001))
;; x should be 129
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x5808))))
(check-sat)
(exit)
