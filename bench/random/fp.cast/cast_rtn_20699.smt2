(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xB8E82537)))
;; x should be Float32(0xB8E82537 [Rational(-15213879, 137438953472), -0.000111])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTN x)))
;; y should be Float16(0x8742 [Rational(-929, 8388608), -0.000111])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x8742)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
