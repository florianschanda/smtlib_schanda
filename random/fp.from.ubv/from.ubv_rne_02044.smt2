(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 170141183460469231731687303715884105724) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100))
;; x should be 170141183460469231731687303715884105724
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.eq r (fp #b0 #b11111110 #b00000000000000000000000))))
(check-sat)
(exit)
