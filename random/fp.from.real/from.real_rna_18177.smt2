(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01111111000101101010110)))
;; x should be Float32(0x803F8B56 [Rational(-2082219, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 67966537227.0 14272476927059598810582859694494951363827466240000.0)))))
;; w should be Float32(0x8033DAB7 [Rational(-3398327, 713623846352979940529142984724747568191373312), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
