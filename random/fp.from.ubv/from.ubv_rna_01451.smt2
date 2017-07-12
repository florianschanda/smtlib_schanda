(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 1009251182701858680) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0000111000000001100101001001101001111010000101100100111101111000))
;; x should be 1009251182701858680
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x5D60194A))))
(check-sat)
(exit)
