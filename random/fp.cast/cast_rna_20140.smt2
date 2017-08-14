(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10101110 #b00111101110011001110000)))
;; x should be Float32(0xD71EE670 [Rational(-174712558714880), -174712558714880.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0xC02E3DCCE00000000000000000000000 [Rational(-174712558714880), -174712558714880.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000101110 #b0011110111001100111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
