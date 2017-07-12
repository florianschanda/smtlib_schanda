(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 318721942877540113052303393699984235284) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11101111110001111001110100000101111101000110111010111010000011011000110000100100101101101011001110011011100101101101101100010100))
;; x should be 318721942877540113052303393699984235284
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
