(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00111000010011001110101)))
;; x should be Float32(0x801C2675 [Rational(-1844853, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 36897076683.0 14272476927059598810582859694494951363827466240000.0)))))
;; w should be Float32(0x801C2676 [Rational(-922427, 356811923176489970264571492362373784095686656), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
