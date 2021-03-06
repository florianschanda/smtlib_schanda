(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00036890)))
;; x should be Float32(0x00036890 [Rational(13961, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000001 #b00000000000000000000000)))
;; y should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010011 #b10000010010011000101100)))
;; z should be Float32(0x49C1262C [Rational(3164555, 2), 1582277.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b0 #b10010011 #b10000010010011000101100))))
(check-sat)
(exit)
