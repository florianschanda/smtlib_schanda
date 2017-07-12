(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 2147483647) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01111111111111111111111111111111))
;; x should be 2147483647
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x41DFFFFFFFC00000))))
(check-sat)
(exit)
