(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b00100110 #b00010011111010100110010)))
;; x should be Float32(0x9309F532 [Rational(-4520601, 2596148429267413814265248164610048), -0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNA x)))
;; y should be Float16(-zero)

(declare-const z Float16)
(assert (= z (fp #b1 #b00000 #b0000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
