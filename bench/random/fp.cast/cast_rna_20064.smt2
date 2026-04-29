(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b01011111011111000010100)))
;; x should be Float32(0xC9AFBE14 [Rational(-2879365, 2), -1439682.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xC135F7C280000000 [Rational(-2879365, 2), -1439682.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010011 #b0101111101111100001010000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
