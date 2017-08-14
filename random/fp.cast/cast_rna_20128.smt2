(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b11001001 #b00111111110011000100110)))
;; x should be Float32(0xE49FE626 [Rational(-23596930003181257097216), -23596930003181257097216.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0xC0493FCC4C0000000000000000000000 [Rational(-23596930003181257097216), -23596930003181257097216.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000001001001 #b0011111111001100010011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
