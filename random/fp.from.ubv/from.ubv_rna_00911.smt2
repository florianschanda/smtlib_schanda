(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 54030) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1101001100001110))
;; x should be 54030
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r (fp #b0 #b11110 #b1010011000))))
(check-sat)
(exit)
