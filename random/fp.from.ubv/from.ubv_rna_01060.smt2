(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 1073741823) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00111111111111111111111111111111))
;; x should be 1073741823
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x4E800000))))
(check-sat)
(exit)
