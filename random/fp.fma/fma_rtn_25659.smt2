(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80800000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x49179B48)))
;; y should be Float32(0x49179B48 [Rational(1241961, 2), 620980.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b10010001000010010111000)))
;; z should be Float32(0x004884B8 [Rational(594071, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b1 #b00010100 #b00101111001101100111111)))
(check-sat)
(exit)
