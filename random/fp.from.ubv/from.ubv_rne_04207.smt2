(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b01110110001100111110001001011111111001111010011001001110001010111101101111000110000000011110110011111010001111001100111010000010))
;; x should be 157118302065343301452750917468616969858

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.eq r (fp #b0 #b10001111101 #b1101100011001111100010010111111110011110100110010100)))
(check-sat)
(exit)
