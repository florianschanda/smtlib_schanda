(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 40154) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1001110011011010))
;; x should be 40154
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x471CDA00))))
(check-sat)
(exit)
