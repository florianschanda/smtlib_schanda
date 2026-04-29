(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00011100110111011010111)))
;; x should be Float32(0xCA8E6ED7 [Rational(-9334487, 2), -4667243.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xC0151CDDAE0000000000000000000000 [Rational(-9334487, 2), -4667243.500000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000010101 #b0001110011011101101011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
