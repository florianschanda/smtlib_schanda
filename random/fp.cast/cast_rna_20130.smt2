(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10001000 #b10001010101010001110011)))
;; x should be Float32(0xC4455473 [Rational(-12932211, 16384), -789.319519])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xC088AA8E60000000 [Rational(-12932211, 16384), -789.319519])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC088AA8E60000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
