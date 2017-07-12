(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 2115428997) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01111110000101101110001010000101))
;; x should be 2115428997
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
