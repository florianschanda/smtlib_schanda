(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA8C9C85)))
;; x should be Float32(0xCA8C9C85 [Rational(-9215109, 2), -4607554.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 73720881.0 16.0)))))
;; w should be Float32(0xCA8C9C87 [Rational(-9215111, 2), -4607555.500000])

(assert (not (distinct x w)))
(check-sat)
(exit)
