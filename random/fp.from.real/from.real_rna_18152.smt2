(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xAAA88E79)))
;; x should be Float32(0xAAA88E79 [Rational(-11046521, 36893488147419103232), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 220930430153.0 737869762948382064640000.0)))))
;; w should be Float32(0xAAA88E7A [Rational(-5523261, 18446744073709551616), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
