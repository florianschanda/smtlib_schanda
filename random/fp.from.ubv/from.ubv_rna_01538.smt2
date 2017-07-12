(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 870951897185279859) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0000110000010110001111100010001011010000001011100101111101110011))
;; x should be 870951897185279859
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10000111010 #b1000001011000111110001000101101000000101110010111111))))
(check-sat)
(exit)
