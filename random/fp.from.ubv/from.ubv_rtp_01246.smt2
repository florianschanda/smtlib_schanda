(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 3221225469) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10111111111111111111111111111101))
;; x should be 3221225469
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r (_ +oo 5 11))))
(check-sat)
(exit)
