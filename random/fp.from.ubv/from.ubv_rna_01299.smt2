(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 2147483651) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10000000000000000000000000000011))
;; x should be 2147483651
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
