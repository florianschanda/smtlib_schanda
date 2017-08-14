(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b00111010111101110101010)))
;; x should be Float32(0xCA1D7BAA [Rational(-5160405, 2), -2580202.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0xC143AF7540000000 [Rational(-5160405, 2), -2580202.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010100 #b0011101011110111010101000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
