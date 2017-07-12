(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 12789510291473819355) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1011000101111101011101111101100100101110011111111110011011011011))
;; x should be 12789510291473819355
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.eq r (fp #b0 #b10111110 #b01100010111110101111000))))
(check-sat)
(exit)
