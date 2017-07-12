(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 6782250015031420529) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0101111000011111011001000111010001101011110101011110011001110001))
;; x should be 6782250015031420529
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x5EBC3EC9))))
(check-sat)
(exit)
