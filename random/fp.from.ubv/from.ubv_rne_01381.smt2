(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 4294967294) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11111111111111111111111111111110))
;; x should be 4294967294
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x41EFFFFFFFC00000))))
(check-sat)
(exit)
