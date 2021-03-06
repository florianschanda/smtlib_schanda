(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11010111 #b10100110101111101111000)))
;; x should be Float32(0x6BD35F78 [Rational(511068372727696434608996352), 511068372727696434608996352.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80800000)))
;; y should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00800000)))
;; z should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b1 #b01011001 #b10100110101111101111000))))
(check-sat)
(exit)
