(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 842302984) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00110010001101001000011000001000))
;; x should be 842302984
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.eq r (fp #b0 #b10011100 #b10010001101001000011000))))
(check-sat)
(exit)
