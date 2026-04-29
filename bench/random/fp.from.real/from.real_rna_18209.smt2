(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x802E3C3B)))
;; x should be Float32(0x802E3C3B [Rational(-3030075, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 216233378459544048601556572367797327914929434893644433.0 50925899408362152156711142210234454026286709841648406265903511233859532494083417654584934400.0)))))
;; w should be Float32(0x802E3C3B [Rational(-3030075, 713623846352979940529142984724747568191373312), -0.000000])

(assert (= x w))
(check-sat)
(exit)
