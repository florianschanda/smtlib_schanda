(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11011011101111000100111)))
;; x should be Float32(0xCAEDDE27 [Rational(-15588903, 2), -7794451.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010010 #b00110001001110100001000)))
;; y should be Float32(0x49189D08 [Rational(1250209, 2), 625104.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111110 #b11111111111111111111111)))
;; z should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b1 #b11111110 #b11111111111111111111111))))
(check-sat)
(exit)
