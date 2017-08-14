(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8011D888)))
;; x should be Float32(0x8011D888 [Rational(-146193, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 427587199.0 1784059615882449851322857461811868920478433280000.0))))
;; w should be Float32(0x00029C1A [Rational(85517, 356811923176489970264571492362373784095686656), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
