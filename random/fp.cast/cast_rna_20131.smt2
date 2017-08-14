(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC4455473)))
;; x should be Float32(0xC4455473 [Rational(-12932211, 16384), -789.319519])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0xC0088AA8E60000000000000000000000 [Rational(-12932211, 16384), -789.319519])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC0088AA8E60000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
