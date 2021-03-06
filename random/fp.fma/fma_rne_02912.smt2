(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10011001100010010101001)))
;; x should be Float32(0x004CC4A9 [Rational(5031081, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010000 #b01100011000100010100000)))
;; y should be Float32(0x483188A0 [Rational(363589, 2), 181794.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b11111111111111111111111)))
;; z should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b0 #b00010001 #b10101001111010001000101)))
(check-sat)
(exit)
