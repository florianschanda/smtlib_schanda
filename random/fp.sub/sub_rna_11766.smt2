(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01111010011111001010101)))
;; x should be Float32(0x4ABD3E55 [Rational(12402261, 2), 6201130.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b00011001111110110111011)))
;; y should be Float32(0xCA8CFDBB [Rational(-9239995, 2), -4619997.500000])

(declare-const result Float32)
(assert (= result (fp.sub RNA x y)))
(assert (= result (fp #b0 #b10010110 #b01001010001111000001000)))
(check-sat)
(exit)
