(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000100 #b10101011111110001001101)))
;; x should be Float32(0x8255FC4D [Rational(-14023757, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b01100110011111011000101)))
;; y should be Float32(0x4AB33EC5 [Rational(11747013, 2), 5873506.500000])

(declare-const result Float32)
(assert (= result (fp.div RTZ x y)))
(assert (= result (fp #b1 #b00000000 #b00000000000000000010011)))
(check-sat)
(exit)
