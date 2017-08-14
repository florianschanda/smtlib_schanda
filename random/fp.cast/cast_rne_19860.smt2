(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x9526F4DA)))
;; x should be Float32(0x9526F4DA [Rational(-5470829, 162259276829213363391578010288128), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xBAA4DE9B40000000 [Rational(-5470829, 162259276829213363391578010288128), -0.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b01110101010 #b0100110111101001101101000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
