(set-info :smt-lib-version 2.6)
(set-logic QF_UFFPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F800000)))
;; x should be Float32(+oo)

;; this relies on unspecified behaviour
(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(1220982739188932401, 2853877186)

(assert (= y (/ 1220982739188932401.0 2853877186.0)))
(check-sat)
(exit)
