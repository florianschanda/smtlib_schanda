(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAE1ABAB)))
;; x should be Float32(0xCAE1ABAB [Rational(-14789547, 2), -7394773.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xC015C357560000000000000000000000 [Rational(-14789547, 2), -7394773.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC015C357560000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
