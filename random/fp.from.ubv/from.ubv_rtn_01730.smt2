(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 13213504497679800109) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1011011101011111110011000101010100011110001110110001011100101101))
;; x should be 13213504497679800109
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.eq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
