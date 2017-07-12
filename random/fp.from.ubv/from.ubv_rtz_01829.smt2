(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 16828148741970859232) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1110100110001001100110000001111100011000100111000001010011100000))
;; x should be 16828148741970859232
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
