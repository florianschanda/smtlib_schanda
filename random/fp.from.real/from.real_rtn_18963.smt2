(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00011001001110010000101)))
;; x should be Float32(0xCA8C9C85 [Rational(-9215109, 2), -4607554.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- 3867184.0))))
;; w should be Float32(0xCA6C08C0 [Rational(-3867184), -3867184.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
