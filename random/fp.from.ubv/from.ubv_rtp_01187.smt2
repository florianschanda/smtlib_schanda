(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 1412876383) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01010100001101101100100001011111))
;; x should be 1412876383
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x41D50DB217C00000))))
(check-sat)
(exit)
