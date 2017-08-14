(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(-maxnormal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF7FFFFF)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0xC07EFFFFFE0000000000000000000000 [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000001111110 #b1111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
