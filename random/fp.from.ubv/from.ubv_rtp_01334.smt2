(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 3828096352) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11100100001011000001110101100000))
;; x should be 3828096352
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x41EC8583AC000000))))
(check-sat)
(exit)
