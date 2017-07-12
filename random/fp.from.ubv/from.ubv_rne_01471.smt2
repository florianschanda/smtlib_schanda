(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 4611686018427387901) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0011111111111111111111111111111111111111111111111111111111111101))
;; x should be 4611686018427387901
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.eq r (fp #b0 #b10000111101 #b0000000000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
