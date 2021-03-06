(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11110000 #b10101111110011000001000)))
;; x should be Float32(0xF857E608 [Rational(-17515772072173874038222895733276672), -17515772072173874038222895733276672.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00100110 #b00011110100000100000011)))
;; y should be Float32(0x930F4103 [Rational(-9388291, 5192296858534827628530496329220096), -0.000000])

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (= result (fp #b0 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)
