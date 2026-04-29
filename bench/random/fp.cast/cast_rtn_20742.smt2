(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(-subnormal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807B1966)))
;; x should be Float32(0x807B1966 [Rational(-4033715, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0xB80EC65980000000 [Rational(-4033715, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b01110000000 #b1110110001100101100110000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
