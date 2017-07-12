(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 85070591730234615865843651857942052867) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011))
;; x should be 85070591730234615865843651857942052867
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.eq r (fp #b0 #b11111101 #b00000000000000000000000))))
(check-sat)
(exit)
