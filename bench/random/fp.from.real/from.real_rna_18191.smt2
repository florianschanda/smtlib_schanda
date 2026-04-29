(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x806883A3)))
;; x should be Float32(0x806883A3 [Rational(-6849443, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 488792595238317925009161428170834370732842699962781299.0 50925899408362152156711142210234454026286709841648406265903511233859532494083417654584934400.0)))))
;; w should be Float32(0x806883A3 [Rational(-6849443, 713623846352979940529142984724747568191373312), -0.000000])

(assert (= x w))
(check-sat)
(exit)
