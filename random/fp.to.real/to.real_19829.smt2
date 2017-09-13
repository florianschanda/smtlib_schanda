(set-info :smt-lib-version 2.6)
(set-logic QF_UFFPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ NaN 8 24)))
;; x should be Float32(NaN)

;; this relies on unspecified behaviour
(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(-2557144078832346924, 328303307)

(assert (= y (- (/ 2557144078832346924.0 328303307.0))))
(check-sat)
(exit)
