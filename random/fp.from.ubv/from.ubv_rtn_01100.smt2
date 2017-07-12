(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 2129562352) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01111110111011101000101011110000))
;; x should be 2129562352
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.eq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
