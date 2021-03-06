(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01000111101110001101110)))
;; x should be Float32(0xCA23DC6E [Rational(-5369399, 2), -2684699.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111110 #b11111111111111111111111)))
;; y should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10000110 #b00111111111010011001000)))
;; z should be Float32(0xC31FF4C8 [Rational(-1310361, 8192), -159.956177])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
