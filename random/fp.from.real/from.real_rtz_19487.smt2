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
(assert (= w ((_ to_fp 8 24) RTZ 127950416437341130649829973724650800899.0)))
;; w should be Float32(0x7EC084B5 [Rational(127950414746084352898421857770882990080), 127950414746084352898421857770882990080.000000])

(assert (distinct x w))
(check-sat)
(exit)
