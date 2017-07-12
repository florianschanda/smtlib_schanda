(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 17064212930621926506) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1110110011010000010000110100000000010101010110001110110001101010))
;; x should be 17064212930621926506
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
