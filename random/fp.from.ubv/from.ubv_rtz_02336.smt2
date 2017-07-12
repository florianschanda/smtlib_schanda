(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 306719573721463246730287018175289544717) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11100110110000000000101010001001001100101101101101111111101010000001011011111010110011101100100010010110000111101101000000001101))
;; x should be 306719573721463246730287018175289544717
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b11111110 #b11001101100000000001010))))
(check-sat)
(exit)
