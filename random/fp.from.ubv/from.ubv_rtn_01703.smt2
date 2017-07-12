(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 10491247681023103224) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1001000110011000011001100010111001001110000001011101000011111000))
;; x should be 10491247681023103224
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.geq r (fp #b0 #b10111110 #b00100011001100001100110)))
(check-sat)
(exit)
