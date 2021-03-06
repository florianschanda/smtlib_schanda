(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10011001111010000001011)))
;; x should be Float32(0xCACCF40B [Rational(-13431819, 2), -6715909.500000])

(declare-const r Real)
(assert (and (> r (- (/ 26863639.0 4.0))) (< r (- (/ 26863637.0 4.0)))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE r)))
(assert (not (= x w)))
(check-sat)
(exit)
