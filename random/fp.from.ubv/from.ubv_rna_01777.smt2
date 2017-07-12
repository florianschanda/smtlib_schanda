(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 13835058055282163711) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1011111111111111111111111111111111111111111111111111111111111111))
;; x should be 13835058055282163711
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x5F400000))))
(check-sat)
(exit)
