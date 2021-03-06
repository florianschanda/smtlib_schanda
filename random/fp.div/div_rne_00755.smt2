(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F7FFFFF)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010000 #b10000111000111101100000)))
;; y should be Float32(0x48438F60 [Rational(400507, 2), 200253.500000])

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (= result (fp #b0 #b11101101 #b01001111000111101001101)))
(check-sat)
(exit)
