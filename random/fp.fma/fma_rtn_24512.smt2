(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC966D7A8)))
;; x should be Float32(0xC966D7A8 [Rational(-1891061, 2), -945530.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x804A6D48)))
;; y should be Float32(0x804A6D48 [Rational(-609705, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4AAF1D29)))
;; z should be Float32(0x4AAF1D29 [Rational(11476265, 2), 5738132.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b0 #b10010101 #b01011110001110100101001))))
(check-sat)
(exit)
