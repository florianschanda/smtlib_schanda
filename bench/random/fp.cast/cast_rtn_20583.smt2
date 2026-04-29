(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10011110 #b10100000010011000101001)))
;; x should be Float32(0x4F502629 [Rational(3492161792), 3492161792.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x41EA04C520000000 [Rational(3492161792), 3492161792.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000011110 #b1010000001001100010100100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
