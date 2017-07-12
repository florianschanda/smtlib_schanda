(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 9223372036854775810) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1000000000000000000000000000000000000000000000000000000000000010))
;; x should be 9223372036854775810
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
