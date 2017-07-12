(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 24357261) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00000001011100111010100110001101))
;; x should be 24357261
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.geq r ((_ to_fp 11 53) #x41773A98D0000000)))
(check-sat)
(exit)
