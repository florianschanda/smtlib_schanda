(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x873BAA06)))
;; x should be Float32(0x873BAA06 [Rational(-6149379, 43556142965880123323311949751266331066368), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0xBF8E77540C0000000000000000000000 [Rational(-6149379, 43556142965880123323311949751266331066368), -0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xBF8E77540C0000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
