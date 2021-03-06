(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x2D388B53)))
;; x should be Float32(0x2D388B53 [Rational(12094291, 1152921504606846976), 0.000000])

(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(12094291, 1152921504606846976)

(assert (not (= y (/ 12094291.0 1152921504606846976.0))))
(check-sat)
(exit)
