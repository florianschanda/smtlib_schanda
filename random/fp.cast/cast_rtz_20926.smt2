(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAEA5F7F)))
;; x should be Float32(0xCAEA5F7F [Rational(-15359871, 2), -7679935.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xC015D4BEFE0000000000000000000000 [Rational(-15359871, 2), -7679935.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC015D4BEFE0000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
