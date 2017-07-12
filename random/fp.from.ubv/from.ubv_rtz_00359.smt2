(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 167) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b10100111))
;; x should be 167
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x5938))))
(check-sat)
(exit)
