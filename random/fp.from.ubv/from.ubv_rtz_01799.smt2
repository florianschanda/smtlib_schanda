(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 12191024948228214855) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1010100100101111001110001001100101111111000100010101000001000111))
;; x should be 12191024948228214855
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10111110 #b01010010010111100111000))))
(check-sat)
(exit)
