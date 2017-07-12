(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 984582668772936392) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0000110110101001111100001011100010000000001101111000101011001000))
;; x should be 984582668772936392
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10000111010 #b1011010100111110000101110001000000000110111100010101))))
(check-sat)
(exit)
