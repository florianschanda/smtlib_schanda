(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b01001101 #b01010010001000011111001)))
;; x should be Float32(0xA6A910F9 [Rational(-11079929, 9444732965739290427392), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 55399649303.0 47223664828696452136960000.0)))))
;; w should be Float32(0xA6A910FA [Rational(-5539965, 4722366482869645213696), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
