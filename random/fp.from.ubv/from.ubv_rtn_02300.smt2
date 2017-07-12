(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 264483452177488526558021639419663071772) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11000110111110011010100011111000000000101110101001011100010100011010011100011100010101100010010010011010111000011011101000011100))
;; x should be 264483452177488526558021639419663071772
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
