(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01110001001011101110110)))
;; x should be Float32(0x00389776 [Rational(1854395, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4D91EDF3)))
;; y should be Float32(0x4D91EDF3 [Rational(306036320), 306036320.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTN x y)))
(assert (= result ((_ to_fp 8 24) #xCD91EDF3)))
(check-sat)
(exit)
