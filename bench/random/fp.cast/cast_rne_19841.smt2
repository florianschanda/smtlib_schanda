(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b10001000 #b10111100001101000100111)))
;; x should be Float32(0xC45E1A27 [Rational(-14555687, 16384), -888.408630])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNE x)))
;; y should be Float16(0xE2F1 [Rational(-1777, 2), -888.500000])

(declare-const z Float16)
(assert (= z (fp #b1 #b11000 #b1011110001)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
