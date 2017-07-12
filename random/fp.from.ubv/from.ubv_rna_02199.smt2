(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 170141183460469231731687303715884105729) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001))
;; x should be 170141183460469231731687303715884105729
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.eq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
