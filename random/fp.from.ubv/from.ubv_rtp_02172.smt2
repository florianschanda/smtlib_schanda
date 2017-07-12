(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 170141183460469231731687303715884105728) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000))
;; x should be 170141183460469231731687303715884105728
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x7F000000))))
(check-sat)
(exit)
