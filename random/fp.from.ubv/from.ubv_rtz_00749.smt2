(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 44196) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1010110010100100))
;; x should be 44196
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b11110 #b0101100101))))
(check-sat)
(exit)
