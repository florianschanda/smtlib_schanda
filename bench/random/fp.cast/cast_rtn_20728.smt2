(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80592E26)))
;; x should be Float32(0x80592E26 [Rational(-2922259, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xBF8064B8980000000000000000000000 [Rational(-2922259, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111110000000 #b0110010010111000100110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
