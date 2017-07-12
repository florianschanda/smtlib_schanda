(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2466263146) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10010011000000000011000001101010))
;; x should be 2466263146
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.geq r (fp #b0 #b10011110 #b00100110000000000110000)))
(check-sat)
(exit)
