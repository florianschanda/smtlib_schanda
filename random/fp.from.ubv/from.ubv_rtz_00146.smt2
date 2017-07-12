(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 104) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b01101000))
;; x should be 104
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x405A000000000000))))
(check-sat)
(exit)
