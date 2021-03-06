(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b01111101 #b01000011010111010011101)))
;; x should be Float32(0xBEA1AE9D [Rational(-10595997, 33554432), -0.315785])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 211919957751.0 671088640000.0)))))
;; w should be Float32(0xBEA1AE9E [Rational(-5297999, 16777216), -0.315785])

(assert (not (distinct x w)))
(check-sat)
(exit)
