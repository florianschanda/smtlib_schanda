(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 49152) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1100000000000000))
;; x should be 49152
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7A00))))
(check-sat)
(exit)
