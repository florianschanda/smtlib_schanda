(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x801C1AC0)))
;; x should be Float32(0x801C1AC0 [Rational(-28779, 11150372599265311570767859136324180752990208), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 64179326896270674609768760571276686055104151596179.0 24866161820489332107769112407341042005022807539867385872023198844657974850626668776652800.0)))))
;; w should be Float32(0x801C1AC0 [Rational(-28779, 11150372599265311570767859136324180752990208), -0.000000])

(assert (= x w))
(check-sat)
(exit)
