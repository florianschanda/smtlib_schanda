(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8011D888)))
;; x should be Float32(0x8011D888 [Rational(-146193, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 521633924108564212389288483736017698919252058243769.0 318286871302263450979444638813965337664291936510302539161896945211622078088021360341155840.0)))))
;; w should be Float32(0x8011D888 [Rational(-146193, 89202980794122492566142873090593446023921664), -0.000000])

(assert (= x w))
(check-sat)
(exit)
