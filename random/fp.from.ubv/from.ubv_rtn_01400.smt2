(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 3427172822) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11001100010001101000000111010110))
;; x should be 3427172822
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x4F4C4681))))
(check-sat)
(exit)
