(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 49154) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1100000000000010))
;; x should be 49154
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x47400200))))
(check-sat)
(exit)
