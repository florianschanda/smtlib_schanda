(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111000 #b00001011100010001010001)))
;; x should be Float32(0x7C05C451 [Rational(2778229007794445829635979000393236480), 2778229007794445829635979000393236480.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b10000111010100010101011)))
;; y should be Float32(0x4AC3A8AB [Rational(12822699, 2), 6411349.500000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (= result (fp #b0 #b11111000 #b00001011100010001010010)))
(check-sat)
(exit)
