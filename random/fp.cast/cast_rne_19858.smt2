(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x99E6FA54)))
;; x should be Float32(0x99E6FA54 [Rational(-3784341, 158456325028528675187087900672), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0xBFB3CDF4A80000000000000000000000 [Rational(-3784341, 158456325028528675187087900672), -0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xBFB3CDF4A80000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
