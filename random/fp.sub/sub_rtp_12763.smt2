(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF7FFFFF)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b10110000001110100100101)))
;; y should be Float32(0x4AD81D25 [Rational(14163237, 2), 7081618.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTP x y)))
(assert (= result ((_ to_fp 8 24) #xFF7FFFFF)))
(check-sat)
(exit)
