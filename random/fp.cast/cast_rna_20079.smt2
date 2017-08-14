(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAEDA55F)))
;; x should be Float32(0xCAEDA55F [Rational(-15574367, 2), -7787183.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xC15DB4ABE0000000 [Rational(-15574367, 2), -7787183.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010101 #b1101101101001010101111100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
