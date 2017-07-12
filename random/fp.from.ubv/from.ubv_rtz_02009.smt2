(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 39615355674716736486971032347469340602) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b00011101110011011010001111010101011010010100111001000000010001001111000001101011111000111111110000101000001010101101111110111010))
;; x should be 39615355674716736486971032347469340602
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.geq r ((_ to_fp 8 24) #x7DEE6D1E)))
(check-sat)
(exit)
