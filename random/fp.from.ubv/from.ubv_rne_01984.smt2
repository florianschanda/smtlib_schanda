(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 85070591730234615865843651857942052862) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b00111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110))
;; x should be 85070591730234615865843651857942052862
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r (_ +oo 5 11))))
(check-sat)
(exit)
