(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00111011 #b10100010010111001011110)))
;; x should be Float32(0x1DD12E5E [Rational(6854447, 1237940039285380274899124224), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00111101 #b00011011001111011110010)))
;; y should be Float32(0x9E8D9EF2 [Rational(-4640633, 309485009821345068724781056), -0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RTN x y)))
(assert (= result ((_ to_fp 8 24) #x8000E771)))
(check-sat)
(exit)
