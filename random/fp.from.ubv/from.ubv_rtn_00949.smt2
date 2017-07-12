(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 65535) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1111111111111111))
;; x should be 65535
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x40EFFFE000000000))))
(check-sat)
(exit)
