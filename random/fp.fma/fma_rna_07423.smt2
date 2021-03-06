(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01010110101100100100111)))
;; x should be Float32(0x4AAB5927 [Rational(11229479, 2), 5614739.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b01001010001111011000001)))
;; y should be Float32(0xCAA51EC1 [Rational(-10821313, 2), -5410656.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111110 #b11111111111111111111111)))
;; z should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b1 #b11111110 #b11111111111111111111111)))
(check-sat)
(exit)
