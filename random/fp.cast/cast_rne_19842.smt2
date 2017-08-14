(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC45E1A27)))
;; x should be Float32(0xC45E1A27 [Rational(-14555687, 16384), -888.408630])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xC08BC344E0000000 [Rational(-14555687, 16384), -888.408630])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000001000 #b1011110000110100010011100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
