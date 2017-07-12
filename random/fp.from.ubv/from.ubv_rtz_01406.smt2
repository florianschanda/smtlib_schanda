(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 3761496510) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11100000001100111110000110111110))
;; x should be 3761496510
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x41EC067C37C00000))))
(check-sat)
(exit)
