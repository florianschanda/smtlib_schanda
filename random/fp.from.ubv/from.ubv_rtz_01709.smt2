(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 13353046343781036596) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1011100101001111100011001110011011110110011001011011001000110100))
;; x should be 13353046343781036596
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
