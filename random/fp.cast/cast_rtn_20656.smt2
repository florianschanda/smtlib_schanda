(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10010001 #b11110011010111010010000)))
;; x should be Float32(0xC8F9AE90 [Rational(-1022697, 2), -511348.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xC011F35D200000000000000000000000 [Rational(-1022697, 2), -511348.500000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000010001 #b1111001101011101001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
