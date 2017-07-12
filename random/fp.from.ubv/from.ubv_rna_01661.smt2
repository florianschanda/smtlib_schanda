(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 5360571176110317503) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0100101001100100100100110001010101001001010000001101111110111111))
;; x should be 5360571176110317503
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
