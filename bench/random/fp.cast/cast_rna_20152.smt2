(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00100110 #b00010011111010100110010)))
;; x should be Float32(0x9309F532 [Rational(-4520601, 2596148429267413814265248164610048), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0xBFA613EA640000000000000000000000 [Rational(-4520601, 2596148429267413814265248164610048), -0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xBFA613EA640000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
