(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 6006) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0001011101110110))
;; x should be 6006
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x40B7760000000000))))
(check-sat)
(exit)
