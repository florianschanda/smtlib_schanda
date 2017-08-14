(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11010011101000100000101)))
;; x should be Float32(0xCAE9D105 [Rational(-15323397, 2), -7661698.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0xC15D3A20A0000000 [Rational(-15323397, 2), -7661698.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010101 #b1101001110100010000010100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
