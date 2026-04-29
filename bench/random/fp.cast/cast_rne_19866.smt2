(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10101110 #b00011001011000110110010)))
;; x should be Float32(0xD70CB1B2 [Rational(-154694823444480), -154694823444480.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xC2E1963640000000 [Rational(-154694823444480), -154694823444480.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC2E1963640000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
