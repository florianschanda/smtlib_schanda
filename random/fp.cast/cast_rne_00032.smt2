(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00100110110101110011101)))
;; x should be Float32(0xCA936B9D [Rational(-9661341, 2), -4830670.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xC1526D73A0000000 [Rational(-9661341, 2), -4830670.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC1526D73A0000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
