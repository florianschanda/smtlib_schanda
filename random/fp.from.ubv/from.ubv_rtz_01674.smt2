(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 4611686018427387907) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0100000000000000000000000000000000000000000000000000000000000011))
;; x should be 4611686018427387907
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x43D0000000000000))))
(check-sat)
(exit)
