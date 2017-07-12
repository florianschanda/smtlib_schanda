(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 34342) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1000011000100110))
;; x should be 34342
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.eq r (fp #b0 #b10001110 #b00001100010011000000000))))
(check-sat)
(exit)
