(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 32769) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1000000000000001))
;; x should be 32769
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7800))))
(check-sat)
(exit)
