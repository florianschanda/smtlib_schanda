(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A08781E)))
;; x should be Float32(0x4A08781E [Rational(4471823, 2), 2235911.500000])

(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(4471823, 2)

(assert (not (= y (/ 4471823.0 2.0))))
(check-sat)
(exit)
