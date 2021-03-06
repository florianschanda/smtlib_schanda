(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b01010101001111000001000)))
;; y should be Float32(0x802A9E08 [Rational(-349121, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00101011 #b01001010000000100101010)))
;; z should be Float32(0x15A5012A [Rational(5406869, 81129638414606681695789005144064), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b0 #b00101011 #b01001010000000100101010))))
(check-sat)
(exit)
