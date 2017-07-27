(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F800000)))
;; x should be Float32(+oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA 334386979930544292766510996563716272623.0)))
;; w should be Float32(0x7F7B9097 [Rational(334386980333493050679597979636718370816), 334386980333493050679597979636718370816.000000])

(assert (distinct x w))
(check-sat)
(exit)
