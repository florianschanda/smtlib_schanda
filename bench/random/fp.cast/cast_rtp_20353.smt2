(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10010000 #b10001100011001010100000)))
;; x should be Float32(0xC84632A0 [Rational(-405909, 2), -202954.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0xC0108C65400000000000000000000000 [Rational(-405909, 2), -202954.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC0108C65400000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
