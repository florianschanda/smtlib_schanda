(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x418B72D7)))
;; x should be Float32(0x418B72D7 [Rational(9138903, 524288), 17.431074])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0x400316E5AE0000000000000000000000 [Rational(9138903, 524288), 17.431074])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x400316E5AE0000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
