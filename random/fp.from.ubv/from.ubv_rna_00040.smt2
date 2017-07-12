(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 61) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b00111101))
;; x should be 61
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x42740000))))
(check-sat)
(exit)
