(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 9548719192923526954) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1000010010000011110111011000001111000010001010010101011100101010))
;; x should be 9548719192923526954
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x43E0907BB078452A))))
(check-sat)
(exit)
