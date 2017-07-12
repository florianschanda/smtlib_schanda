(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 55999) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1101101010111111))
;; x should be 55999
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7AD5))))
(check-sat)
(exit)
