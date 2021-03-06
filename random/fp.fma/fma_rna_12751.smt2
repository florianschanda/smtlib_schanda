(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b01111011 #b10000000001110101000111)))
;; x should be Float32(0xBDC01D47 [Rational(-12590407, 134217728), -0.093806])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00000000000000000000001)))
;; y should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b00111111001000011000001)))
;; z should be Float32(0x4A9F90C1 [Rational(10457281, 2), 5228640.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b0 #b10010101 #b00111111001000011000001)))
(check-sat)
(exit)
