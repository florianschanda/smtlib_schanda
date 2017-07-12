(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 4154240264) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11110111100111001010110100001000))
;; x should be 4154240264
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r (fp #b0 #b10000011110 #b1110111100111001010110100001000000000000000000000000))))
(check-sat)
(exit)
