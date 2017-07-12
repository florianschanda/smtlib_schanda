(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 16283920768126877248) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1110000111111100000110111010100110100110110011101111111001000000))
;; x should be 16283920768126877248
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10111110 #b11000011111110000011011))))
(check-sat)
(exit)
