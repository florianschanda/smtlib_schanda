(set-info :smt-lib-version 2.6)
(set-logic QF_UFFPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF800000)))
;; x should be Float32(-oo)

;; this relies on unspecified behaviour
(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(-8258345394472708363, 3763517575)

(assert (= y (- (/ 8258345394472708363.0 3763517575.0))))
(check-sat)
(exit)
