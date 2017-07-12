(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 24170) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0101111001101010))
;; x should be 24170
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10001101 #b01111001101010000000000))))
(check-sat)
(exit)
