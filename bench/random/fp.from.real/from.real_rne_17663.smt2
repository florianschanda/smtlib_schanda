(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xB018CBF4)))
;; x should be Float32(0xB018CBF4 [Rational(-2503421, 4503599627370496), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 134003042471.0 360287970189639680000.0)))))
;; w should be Float32(0xAFCC78F0 [Rational(-837519, 2251799813685248), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
