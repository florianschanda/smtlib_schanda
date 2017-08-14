(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01001110100001111101101)))
;; x should be Float32(0x802743ED [Rational(-2573293, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 183636344431506083068238737026316676060170367894734961.0 50925899408362152156711142210234454026286709841648406265903511233859532494083417654584934400.0)))))
;; w should be Float32(0x802743ED [Rational(-2573293, 713623846352979940529142984724747568191373312), -0.000000])

(assert (= x w))
(check-sat)
(exit)
