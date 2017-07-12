(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 2) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0000000000000010))
;; x should be 2
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x40000000))))
(check-sat)
(exit)
