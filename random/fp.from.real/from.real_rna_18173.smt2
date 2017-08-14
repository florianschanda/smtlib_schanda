(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01111111000101101010110)))
;; x should be Float32(0x803F8B56 [Rational(-2082219, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 74296049825905955376011772437478324679026503326670353.0 12731474852090538039177785552558613506571677460412101566475877808464883123520854413646233600.0)))))
;; w should be Float32(0x803F8B56 [Rational(-2082219, 356811923176489970264571492362373784095686656), -0.000000])

(assert (= x w))
(check-sat)
(exit)
