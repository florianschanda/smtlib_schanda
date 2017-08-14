(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0070C441)))
;; x should be Float32(0x0070C441 [Rational(7390273, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 2060107193572313367360256239847372083414826143300711.0 198929294563914656862152899258728336040182460318939086976185590757263798805013350213222400.0))))
;; w should be Float32(0x0070C441 [Rational(7390273, 713623846352979940529142984724747568191373312), 0.000000])

(assert (= x w))
(check-sat)
(exit)
