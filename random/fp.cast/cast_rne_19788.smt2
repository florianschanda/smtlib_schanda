(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10100111110000110100001)))
;; x should be Float32(0xCAD3E1A1 [Rational(-13885857, 2), -6942928.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xC15A7C3420000000 [Rational(-13885857, 2), -6942928.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010101 #b1010011111000011010000100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
