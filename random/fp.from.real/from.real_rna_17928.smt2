(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11100110100000001110010)))
;; x should be Float32(0x00734072 [Rational(3776569, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 80862763749.0 14272476927059598810582859694494951363827466240000.0))))
;; w should be Float32(0x003DB182 [Rational(2021569, 356811923176489970264571492362373784095686656), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
