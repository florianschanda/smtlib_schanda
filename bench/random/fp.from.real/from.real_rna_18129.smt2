(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xBEA1AE9D)))
;; x should be Float32(0xBEA1AE9D [Rational(-10595997, 33554432), -0.315785])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 151510271479.0 671088640000.0)))))
;; w should be Float32(0xBE672FB3 [Rational(-15151027, 67108864), -0.225768])

(assert (not (distinct x w)))
(check-sat)
(exit)
