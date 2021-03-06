(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10001100 #b11010001111110010110101)))
;; x should be Float32(0xC668FCB5 [Rational(-15269045, 1024), -14911.176758])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00800000)))
;; y should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x8057C414)))
;; z should be Float32(0x8057C414 [Rational(-1437957, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result ((_ to_fp 8 24) #x8768FF73)))
(check-sat)
(exit)
