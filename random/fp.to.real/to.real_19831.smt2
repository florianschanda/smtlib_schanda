(set-info :smt-lib-version 2.6)
(set-logic QF_UFFPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFFB1E65C)))
;; x should be Float32(NaN)

;; this relies on unspecified behaviour
(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(-575858900724424111, 386652939)

(assert (= y (- (/ 575858900724424111.0 386652939.0))))
(check-sat)
(exit)
