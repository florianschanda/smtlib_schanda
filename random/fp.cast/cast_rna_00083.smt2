(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00011100110010111100010)))
;; x should be Float32(0x000E65E2 [Rational(471793, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x37DCCBC400000000 [Rational(471793, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01101111101 #b1100110010111100010000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
