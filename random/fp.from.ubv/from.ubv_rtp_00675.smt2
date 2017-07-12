(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 16386) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0100000000000010))
;; x should be 16386
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x40D0008000000000))))
(check-sat)
(exit)
