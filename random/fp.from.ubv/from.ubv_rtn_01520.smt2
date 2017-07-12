(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 2056071734102672318) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0001110010001000101000100101100100111111111010010100001110111110))
;; x should be 2056071734102672318
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10111011 #b11001000100010100010010))))
(check-sat)
(exit)
