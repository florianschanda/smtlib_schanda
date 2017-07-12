(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 12694) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0011000110010110))
;; x should be 12694
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.geq r (fp #b0 #b11100 #b1000110010))))
(check-sat)
(exit)
