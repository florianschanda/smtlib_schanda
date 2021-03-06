(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010010 #b10101000100111010001000)))
;; x should be Float32(0xC9544E88 [Rational(-1739217, 2), -869608.500000])

(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(-1739217, 2)

(assert (not (= y (- (/ 1739217.0 2.0)))))
(check-sat)
(exit)
