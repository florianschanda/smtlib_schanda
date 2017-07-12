(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 5974) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0001011101010110))
;; x should be 5974
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.eq r (fp #b0 #b11011 #b0111010110))))
(check-sat)
(exit)
