(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 3629067383) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11011000010011110010110001110111))
;; x should be 3629067383
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
