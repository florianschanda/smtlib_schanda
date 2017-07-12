(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 3615279945865870172) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0011001000101100000011011111010011001000111011011011101101011100))
;; x should be 3615279945865870172
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
