(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10100100000011010111101)))
;; x should be Float32(0xCAD206BD [Rational(-13764285, 2), -6882142.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00800000)))
;; y should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RNA x y)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
