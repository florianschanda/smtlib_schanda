(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 18321706035329023323) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1111111001000011110001101001000100001010111010101011110101011011))
;; x should be 18321706035329023323
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x43EFC878D2215D58))))
(check-sat)
(exit)
