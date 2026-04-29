(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11010011001111000101000)))
;; x should be Float32(0x80699E28 [Rational(-865221, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0xBF80A678A00000000000000000000000 [Rational(-865221, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xBF80A678A00000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
