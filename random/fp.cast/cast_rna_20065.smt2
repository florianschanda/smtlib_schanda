(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b01011111011111000010100)))
;; x should be Float32(0xC9AFBE14 [Rational(-2879365, 2), -1439682.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0xC0135F7C280000000000000000000000 [Rational(-2879365, 2), -1439682.500000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000010011 #b0101111101111100001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
