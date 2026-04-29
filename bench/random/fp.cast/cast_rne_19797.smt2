(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA3F1EAA)))
;; x should be Float32(0xCA3F1EAA [Rational(-6262613, 2), -3131306.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xC147E3D540000000 [Rational(-6262613, 2), -3131306.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010100 #b0111111000111101010101000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
