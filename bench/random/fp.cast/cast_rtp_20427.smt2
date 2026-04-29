(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10101001 #b00101010101111110011000)))
;; x should be Float32(0xD4955F98 [Rational(-5132431392768), -5132431392768.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0xC292ABF300000000 [Rational(-5132431392768), -5132431392768.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000101001 #b0010101010111111001100000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
