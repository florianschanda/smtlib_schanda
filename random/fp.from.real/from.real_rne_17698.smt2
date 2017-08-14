(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8014A895)))
;; x should be Float32(0x8014A895 [Rational(-1353877, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 27077551307.0 14272476927059598810582859694494951363827466240000.0)))))
;; w should be Float32(0x8014A896 [Rational(-676939, 356811923176489970264571492362373784095686656), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
