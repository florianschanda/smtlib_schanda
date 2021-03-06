(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00000000000000000000000)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y (fp #b1 #b11000110 #b11100101111111101011001)))
;; y should be Float32(0xE372FF59 [Rational(-4482511803590310363136), -4482511803590310363136.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10100011 #b01010001110001001110000)))
;; z should be Float32(0x51A8E270 [Rational(90669187072), 90669187072.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b0 #b10100011 #b01010001110001001110000)))
(check-sat)
(exit)
