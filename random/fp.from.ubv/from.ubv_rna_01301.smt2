(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 2846455547) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10101001101010010111011011111011))
;; x should be 2846455547
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x4F29A977))))
(check-sat)
(exit)
