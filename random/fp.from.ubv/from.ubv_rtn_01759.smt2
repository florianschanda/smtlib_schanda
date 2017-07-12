(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 13835058055282163710) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1011111111111111111111111111111111111111111111111111111111111110))
;; x should be 13835058055282163710
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.geq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
