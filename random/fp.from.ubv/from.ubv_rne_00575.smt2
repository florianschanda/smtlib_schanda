(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 13495) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0011010010110111))
;; x should be 13495
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x40CA5B8000000000))))
(check-sat)
(exit)
