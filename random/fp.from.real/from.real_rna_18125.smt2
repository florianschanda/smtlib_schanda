(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xBEA1AE9D)))
;; x should be Float32(0xBEA1AE9D [Rational(-10595997, 33554432), -0.315785])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 7110853289721507.0 22517998136852480.0)))))
;; w should be Float32(0xBEA1AE9D [Rational(-10595997, 33554432), -0.315785])

(assert (not (= x w)))
(check-sat)
(exit)
