(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10000101110001001101010)))
;; x should be Float32(0x8042E26A [Rational(-2191669, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010001 #b00110001011101001110000)))
;; y should be Float32(0xC898BA70 [Rational(-625575, 2), -312787.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000001 #b00000000000000000000000)))
;; z should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b0 #b00010010 #b00111111001110011010010))))
(check-sat)
(exit)
