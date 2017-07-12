(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 85070591730234615865843651857942052861) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101))
;; x should be 85070591730234615865843651857942052861
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x7E800000))))
(check-sat)
(exit)
