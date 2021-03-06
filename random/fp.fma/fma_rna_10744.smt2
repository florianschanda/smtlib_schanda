(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9EA558C)))
;; x should be Float32(0xC9EA558C [Rational(-3839331, 2), -1919665.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000001 #b00000000000000000000000)))
;; y should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00205228)))
;; z should be Float32(0x00205228 [Rational(264773, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b0 #b00010101 #b11010100101010110001110))))
(check-sat)
(exit)
