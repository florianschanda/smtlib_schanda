(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x9526F4DA)))
;; x should be Float32(0x9526F4DA [Rational(-5470829, 162259276829213363391578010288128), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0xBFAA4DE9B40000000000000000000000 [Rational(-5470829, 162259276829213363391578010288128), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111110101010 #b0100110111101001101101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
