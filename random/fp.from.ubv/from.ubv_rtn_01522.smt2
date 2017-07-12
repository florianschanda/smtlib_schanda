(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 4611686018427387902) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0011111111111111111111111111111111111111111111111111111111111110))
;; x should be 4611686018427387902
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
