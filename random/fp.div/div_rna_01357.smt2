(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A31E60A)))
;; x should be Float32(0x4A31E60A [Rational(5829381, 2), 2914690.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFF7FFFFF)))
;; y should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.div RNA x y)))
(assert (= result (fp #b1 #b00010100 #b01100011110011000001011)))
(check-sat)
(exit)
