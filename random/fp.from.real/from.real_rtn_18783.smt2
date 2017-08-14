(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F7FFFFF)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- 129440153319038237472460564208916544802.0))))
;; w should be Float32(0xFEC2C289 [Rational(-129440157731472568091060783377840865280), -129440157731472568091060783377840865280.000000])

(assert (distinct x w))
(check-sat)
(exit)
