(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b01110110011111001000100)))
;; x should be Float32(0xC9BB3E44 [Rational(-3067793, 2), -1533896.500000])

(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(-3067793, 2)

(assert (= y (- (/ 3067793.0 2.0))))
(check-sat)
(exit)
