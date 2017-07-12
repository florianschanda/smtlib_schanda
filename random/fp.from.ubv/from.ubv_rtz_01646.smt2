(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 6771025958411396074) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0101110111110111100001000011110000011000000011110110001111101010))
;; x should be 6771025958411396074
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.leq r ((_ to_fp 11 53) #x43D77DE10F0603D8)))
(check-sat)
(exit)
