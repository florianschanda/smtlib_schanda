(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 646601839) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00100110100010100101110001101111))
;; x should be 646601839
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.geq r (fp #b0 #b10000011100 #b0011010001010010111000110111100000000000000000000000)))
(check-sat)
(exit)
