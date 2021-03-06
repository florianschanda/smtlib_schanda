(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00001000 #b01111111000111010010010)))
;; y should be Float32(0x043F8E92 [Rational(6276937, 2787593149816327892691964784081045188247552), 0.000000])

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (= result (fp #b0 #b00000111 #b00000001001010100110000)))
(check-sat)
(exit)
