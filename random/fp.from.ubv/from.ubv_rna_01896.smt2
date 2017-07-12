(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 13835058055282163715) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1100000000000000000000000000000000000000000000000000000000000011))
;; x should be 13835058055282163715
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10000111110 #b1000000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
