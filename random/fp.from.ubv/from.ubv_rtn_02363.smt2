(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 328319620101244977978453501805926154658) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11110111000000000000111100001011011100000010110100101000101100011111010011010111101011111100011101110111111000100000000110100010))
;; x should be 328319620101244977978453501805926154658
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.geq r (fp #b0 #b11111110 #b11101110000000000001111))))
(check-sat)
(exit)
