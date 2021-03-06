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
(assert (= y (fp #b0 #b10010100 #b10010000111011001011010)))
;; y should be Float32(0x4A48765A [Rational(6568749, 2), 3284374.500000])

(declare-const result Float32)
(assert (= result (fp.max x y)))
(assert (= result (fp #b0 #b10010100 #b10010000111011001011010)))
(check-sat)
(exit)
