(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA2C47C7F)))
;; x should be Float32(0xA2C47C7F [Rational(-12876927, 2417851639229258349412352), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0xBC588F8FE0000000 [Rational(-12876927, 2417851639229258349412352), -0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xBC588F8FE0000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
