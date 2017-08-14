(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11001001111001110011000)))
;; x should be Float32(0x8064F398 [Rational(-826995, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xBF8093CE600000000000000000000000 [Rational(-826995, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111110000000 #b1001001111001110011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
