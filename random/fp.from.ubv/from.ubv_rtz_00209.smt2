(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 110) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b01101110))
;; x should be 110
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10000101 #b10111000000000000000000))))
(check-sat)
(exit)
