(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 32768) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1000000000000000))
;; x should be 32768
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x47000000))))
(check-sat)
(exit)
