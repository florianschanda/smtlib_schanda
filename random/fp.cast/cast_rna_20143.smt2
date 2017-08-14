(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b01100110 #b10011100001101001111110)))
;; x should be Float32(0xB34E1A7E [Rational(-6753599, 140737488355328), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0xBFE69C34FC0000000000000000000000 [Rational(-6753599, 140737488355328), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111111100110 #b1001110000110100111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
