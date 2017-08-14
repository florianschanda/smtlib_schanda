(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF7FFFFF)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 98301705221561594903323420307667504394.0))))
;; w should be Float32(0xFE93E871 [Rational(-98301710081923962982718309524492517376), -98301710081923962982718309524492517376.000000])

(assert (distinct x w))
(check-sat)
(exit)
