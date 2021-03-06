(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10000111 #b01100011111101100110111)))
;; y should be Float32(0x43B1FB37 [Rational(11664183, 32768), 355.962616])

(declare-const result Float32)
(assert (= result (fp.mul RNA x y)))
(assert (= result (fp #b1 #b00001001 #b01100011111101100110111)))
(check-sat)
(exit)
