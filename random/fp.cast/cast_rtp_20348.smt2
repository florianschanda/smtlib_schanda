(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(-halfpoint) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11010011101000100000101)))
;; x should be Float32(0xCAE9D105 [Rational(-15323397, 2), -7661698.500000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTP x)))
;; y should be Float16(0xFBFF [Rational(-65504), -65504.000000])

(declare-const z Float16)
(assert (= z (fp #b1 #b11110 #b1111111111)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
