(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b10000110111110110100100)))
;; x should be Float32(0xC9C37DA4 [Rational(-3202921, 2), -1601460.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b11010001111010111100011)))
;; y should be Float32(0xCAE8F5E3 [Rational(-15267299, 2), -7633649.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80800000)))
;; z should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x5531E5A1))))
(check-sat)
(exit)
