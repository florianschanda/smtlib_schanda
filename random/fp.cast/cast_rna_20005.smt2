(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x69AAD78D)))
;; x should be Float32(0x69AAD78D [Rational(25816912389902290808471552), 25816912389902290808471552.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0x405355AF1A0000000000000000000000 [Rational(25816912389902290808471552), 25816912389902290808471552.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x405355AF1A0000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
