(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 44049) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1010110000010001))
;; x should be 44049
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7960))))
(check-sat)
(exit)
