(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b01010100 #b10100110111110010011000)))
;; x should be Float32(0xAA537C98 [Rational(-1732499, 9223372036854775808), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xBD4A6F9300000000 [Rational(-1732499, 9223372036854775808), -0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xBD4A6F9300000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
