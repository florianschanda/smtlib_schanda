(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 28624) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0110111111010000))
;; x should be 28624
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x46DFA000))))
(check-sat)
(exit)
