(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b01110001 #b11010000010010100110111)))
;; x should be Float32(0xB8E82537 [Rational(-15213879, 137438953472), -0.000111])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0xBF1D04A6E0000000 [Rational(-15213879, 137438953472), -0.000111])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xBF1D04A6E0000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
