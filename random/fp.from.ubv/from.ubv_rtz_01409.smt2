(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 3704475178) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11011100110011011100111000101010))
;; x should be 3704475178
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10011110 #b10111001100110111001110))))
(check-sat)
(exit)
