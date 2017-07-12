(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 14888386754000976320) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1100111010011110001011001101111011100110110110111111100111000000))
;; x should be 14888386754000976320
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10111110 #b10011101001111000101100))))
(check-sat)
(exit)
