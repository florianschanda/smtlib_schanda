(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01001001111100011101000)))
;; x should be Float32(0x0024F8E8 [Rational(302877, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 48460335987.0 14272476927059598810582859694494951363827466240000.0))))
;; w should be Float32(0x0024F8E9 [Rational(2423017, 713623846352979940529142984724747568191373312), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
