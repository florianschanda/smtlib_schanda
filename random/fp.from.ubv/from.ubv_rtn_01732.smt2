(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 13835058055282163709) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1011111111111111111111111111111111111111111111111111111111111101))
;; x should be 13835058055282163709
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
