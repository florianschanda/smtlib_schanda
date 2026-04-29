(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11010110010100111101010)))
;; x should be Float32(0x806B29EA [Rational(-3511541, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xBF80ACA7A80000000000000000000000 [Rational(-3511541, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111110000000 #b1010110010100111101010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
