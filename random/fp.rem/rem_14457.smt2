(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00800000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010100 #b01000110110111001111110)))
;; y should be Float32(0x4A236E7E [Rational(5355327, 2), 2677663.500000])

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (= result ((_ to_fp 8 24) #x00800000)))
(check-sat)
(exit)
