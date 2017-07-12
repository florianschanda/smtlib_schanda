(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 2701) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0000101010001101))
;; x should be 2701
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x4528D000))))
(check-sat)
(exit)
