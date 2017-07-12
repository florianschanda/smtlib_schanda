(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 60318) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1110101110011110))
;; x should be 60318
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10001110 #b11010111001111000000000))))
(check-sat)
(exit)
