(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11111011011100010111111)))
;; x should be Float32(0x807DB8BF [Rational(-8239295, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b10010000010001101111101)))
;; y should be Float32(0x4AC8237D [Rational(13116285, 2), 6558142.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000001 #b00000000000000000000000)))
;; z should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b1 #b00010111 #b10001001001001110001000)))
(check-sat)
(exit)
