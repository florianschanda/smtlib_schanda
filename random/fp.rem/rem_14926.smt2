(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b10110011010000110110000)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b00111110000001110001101)))
;; y should be Float32(0xCA9F038D [Rational(-10421133, 2), -5210566.500000])

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (= result ((_ to_fp 8 24) #xFFFFFFFF)))
(check-sat)
(exit)
