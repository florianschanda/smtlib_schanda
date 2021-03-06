(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49832E24)))
;; x should be Float32(0x49832E24 [Rational(2149257, 2), 1074628.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8038D65E)))
;; y should be Float32(0x8038D65E [Rational(-1862447, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111111 #b01000011000011000100011)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #xFFFFFFFF)))
(check-sat)
(exit)
