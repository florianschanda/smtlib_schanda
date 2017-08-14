(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF7FFFFF)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- 260072007340385464553447298773491472558.0))))
;; w should be Float32(0xFF43A80C [Rational(-260072008439207690077880587504991600640), -260072008439207690077880587504991600640.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
