(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x767F9929)))
;; x should be Float32(0x767F9929 [Rational(1296037261670315269226544754589696), 1296037261670315269226544754589696.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ 1296037339041567724562811935784961.0)))
;; w should be Float32(0x767F992A [Rational(1296037339041567724562811935784960), 1296037339041567724562811935784960.000000])

(assert (distinct x w))
(check-sat)
(exit)
