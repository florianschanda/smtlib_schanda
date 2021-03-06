(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10110101 #b11111111101000001110011)))
;; x should be Float32(0x5AFFD073 [Rational(36002655700516864), 36002655700516864.000000])

(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(36002655700516864)

(assert (not (= y 36002655700516864.0)))
(check-sat)
(exit)
