(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01101010000100000010001)))
;; x should be Float32(0x80350811 [Rational(-3475473, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0xBF7FA840880000000000000000000000 [Rational(-3475473, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111101111111 #b1010100001000000100010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
