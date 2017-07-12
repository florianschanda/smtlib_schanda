(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 137710428932401694543247152880565323279) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01100111100110100001000001011010000001000000110000110111111110001100110100001000111011001001101010100111001010111000011000001111))
;; x should be 137710428932401694543247152880565323279
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.leq r (fp #b0 #b10001111101 #b1001111001101000010000010110100000010000001100001101)))
(check-sat)
(exit)
