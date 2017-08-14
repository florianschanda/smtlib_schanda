(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010000 #b10001100011001010100000)))
;; x should be Float32(0xC84632A0 [Rational(-405909, 2), -202954.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0xC108C65400000000 [Rational(-405909, 2), -202954.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010000 #b1000110001100101010000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
