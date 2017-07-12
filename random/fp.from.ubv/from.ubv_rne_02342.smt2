(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 293850946581518264348036926822897351046) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11011101000100011010001000111011100001101000101101001010101000100101001001000000111101000011011111100000011010101111100110000110))
;; x should be 293850946581518264348036926822897351046
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x47EBA2344770D169))))
(check-sat)
(exit)
