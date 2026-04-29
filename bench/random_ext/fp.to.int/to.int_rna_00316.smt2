(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11110001011010000011011)))
;; x should be Float32(0xCAF8B41B [Rational(-16299035, 2), -8149517.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -8149518

(declare-const z Int)
(assert (= z (- 8149518)))
(assert (= y z))
