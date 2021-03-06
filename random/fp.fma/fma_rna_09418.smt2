(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4B8B510C)))
;; x should be Float32(0x4B8B510C [Rational(18260504), 18260504.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b10000001111001101110001)))
;; y should be Float32(0x4AC0F371 [Rational(12645233, 2), 6322616.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111110 #b11111111111111111111111)))
;; z should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b1 #b11111110 #b11111111111111111111111))))
(check-sat)
(exit)
