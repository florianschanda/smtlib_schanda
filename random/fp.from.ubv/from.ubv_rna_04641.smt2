(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11110100110010111100111011100110111001001001101101001110100000011111000010000001010100111100001110001101110111010001011000011001))
;; x should be 325389863703408110004878410584759801369

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.geq r (fp #b0 #b10001111110 #b1110100110010111100111011100110111001001001101101010)))
(check-sat)
(exit)
