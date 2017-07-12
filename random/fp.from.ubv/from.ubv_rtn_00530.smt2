(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 14625) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0011100100100001))
;; x should be 14625
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x46648400))))
(check-sat)
(exit)
