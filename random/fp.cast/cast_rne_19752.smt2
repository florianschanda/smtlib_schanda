(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11111100100110101110011)))
;; x should be Float32(0x007E4D73 [Rational(8277363, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x380F935CC0000000 [Rational(8277363, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01110000000 #b1111100100110101110011000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
