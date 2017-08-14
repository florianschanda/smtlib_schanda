(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00010011010101100101000)))
;; x should be Float32(0x0009AB28 [Rational(79205, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0x3F7D3565000000000000000000000000 [Rational(79205, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b011111101111101 #b0011010101100101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
