(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 1317682471) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01001110100010100011110100100111))
;; x should be 1317682471
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.geq r ((_ to_fp 11 53) #x41D3A28F49C00000)))
(check-sat)
(exit)
