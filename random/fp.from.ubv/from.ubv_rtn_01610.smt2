(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 8946803479470595025) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0111110000101001011011100101110011000101000100101101101111010001))
;; x should be 8946803479470595025
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10000111101 #b1111000010100101101110010111001100010100010010110110))))
(check-sat)
(exit)
