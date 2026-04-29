(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01001110100001111101101)))
;; x should be Float32(0x802743ED [Rational(-2573293, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 20127043529.0 14272476927059598810582859694494951363827466240000.0))))
;; w should be Float32(0x000F5B10 [Rational(62897, 44601490397061246283071436545296723011960832), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
