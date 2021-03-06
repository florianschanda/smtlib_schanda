(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11010101110110000011101)))
;; x should be Float32(0xCAEAEC1D [Rational(-15395869, 2), -7697934.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b10100110101011100110011)))
;; y should be Float32(0x4AD35733 [Rational(13850419, 2), 6925209.500000])

(declare-const result Float32)
(assert (= result (fp.div RNA x y)))
(assert (= result (fp #b1 #b01111111 #b00011100100100001001101)))
(check-sat)
(exit)
