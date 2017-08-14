(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01110111011110101100110)))
;; x should be Float32(0xCA3BBD66 [Rational(-6151859, 2), -3075929.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xC014777ACC0000000000000000000000 [Rational(-6151859, 2), -3075929.500000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000010100 #b0111011101111010110011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
