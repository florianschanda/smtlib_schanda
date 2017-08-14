(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA0EC62A)))
;; x should be Float32(0xCA0EC62A [Rational(-4678421, 2), -2339210.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xC0141D8C540000000000000000000000 [Rational(-4678421, 2), -2339210.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC0141D8C540000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
