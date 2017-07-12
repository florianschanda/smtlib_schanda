(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 16387) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0100000000000011))
;; x should be 16387
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x40D000C000000000))))
(check-sat)
(exit)
