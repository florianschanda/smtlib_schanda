(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 9439274789301752264) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1000001011111111000010100110100011010001101000011001000111001000))
;; x should be 9439274789301752264
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x43E05FE14D1A3432))))
(check-sat)
(exit)
