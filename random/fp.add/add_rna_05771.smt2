(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10001110 #b01000010010111101101100)))
;; x should be Float32(0xC7212F6C [Rational(-2640859, 64), -41263.421875])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b11011010001101101010011)))
;; y should be Float32(0x4AED1B53 [Rational(15539027, 2), 7769513.500000])

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (= result (fp #b0 #b10010101 #b11010111101100011110100)))
(check-sat)
(exit)
