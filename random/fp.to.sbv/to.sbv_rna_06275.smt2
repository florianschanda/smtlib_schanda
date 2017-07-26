(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -subnormal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00001101111100001101110)))
;; x should be Float32(0x8006F86E [Rational(-228407, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RNA x)))
;; y should be 0

(declare-const z (_ BitVec 8))
(assert (= z #b00000000))
;; z should be 0

(assert (= y z))
(check-sat)
(exit)
