(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 986791624) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00111010110100010011111011001000))
;; x should be 986791624
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
