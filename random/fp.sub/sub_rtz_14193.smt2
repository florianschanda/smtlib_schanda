(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b01001011 #b10010110000010111001001)))
;; x should be Float32(0xA5CB05C9 [Rational(-13305289, 37778931862957161709568), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11111110 #b11111111111111111111111)))
;; y should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (= result (fp #b0 #b11111110 #b11111111111111111111110)))
(check-sat)
(exit)
