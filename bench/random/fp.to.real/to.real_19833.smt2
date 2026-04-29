(set-info :smt-lib-version 2.6)
(set-logic QF_UFFPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b11111001001110000101100)))
;; x should be Float32(NaN)

;; this relies on unspecified behaviour
(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(-2235435863603705661, 296286662)

(assert (= y (- (/ 2235435863603705661.0 296286662.0))))
(check-sat)
(exit)
