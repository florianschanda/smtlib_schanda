(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b01001001101000010000010)))
;; x should be Float32(0x4A24D082 [Rational(5400641, 2), 2700320.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111110 #b11111111111111111111111)))
;; y should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b11011111001000001111010)))
;; z should be Float32(0x006F907A [Rational(3655741, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b0 #b11111110 #b11111111111111111111111))))
(check-sat)
(exit)
