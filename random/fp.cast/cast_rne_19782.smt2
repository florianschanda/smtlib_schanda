(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01111000111001101110101)))
;; x should be Float32(0xCABC7375 [Rational(-12350325, 2), -6175162.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xC1578E6EA0000000 [Rational(-12350325, 2), -6175162.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC1578E6EA0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
