(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 17987303137675392090) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1111100110011111101111001110011100100100011010010011010001011010))
;; x should be 17987303137675392090
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
