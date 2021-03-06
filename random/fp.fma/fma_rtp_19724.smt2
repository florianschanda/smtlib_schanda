(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b01100111 #b11101101010111001101111)))
;; x should be Float32(0xB3F6AE6F [Rational(-16166511, 140737488355328), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFF7FFFFF)))
;; y should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b11101010001110000001111)))
;; z should be Float32(0x4AF51C0F [Rational(16063503, 2), 8031751.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #x73F6AE6F)))
(check-sat)
(exit)
