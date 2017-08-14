(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAF8679F)))
;; x should be Float32(0xCAF8679F [Rational(-16279455, 2), -8139727.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0xC015F0CF3E0000000000000000000000 [Rational(-16279455, 2), -8139727.500000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000010101 #b1111000011001111001111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
