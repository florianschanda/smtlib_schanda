(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10010001 #b00001010101000001010111)))
;; x should be Float32(0xC8855057 [Rational(-8736855, 32), -273026.718750])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0xC0110AA0AE0000000000000000000000 [Rational(-8736855, 32), -273026.718750])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000010001 #b0000101010100000101011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
