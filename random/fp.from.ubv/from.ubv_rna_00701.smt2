(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 24347) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0101111100011011))
;; x should be 24347
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x40D7C6C000000000))))
(check-sat)
(exit)
