(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10111000010110000111110)))
;; x should be Float32(0x805C2C3E [Rational(-3020319, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010001 #b10010000011111101010000)))
;; y should be Float32(0xC8C83F50 [Rational(-820213, 2), -410106.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010011 #b01011100110000001010100)))
;; z should be Float32(0xC9AE6054 [Rational(-2856981, 2), -1428490.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b1 #b10010011 #b01011100110000001010100))))
(check-sat)
(exit)
