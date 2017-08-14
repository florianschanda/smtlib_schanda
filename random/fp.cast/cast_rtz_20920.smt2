(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b11111010111101000110010)))
;; x should be Float32(0xCA7D7A32 [Rational(-8305945, 2), -4152972.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xC014FAF4640000000000000000000000 [Rational(-8305945, 2), -4152972.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC014FAF4640000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
