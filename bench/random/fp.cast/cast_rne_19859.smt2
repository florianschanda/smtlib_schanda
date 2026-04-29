(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b00101010 #b01001101111010011011010)))
;; x should be Float32(0x9526F4DA [Rational(-5470829, 162259276829213363391578010288128), -0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNE x)))
;; y should be Float16(-zero)

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x8000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
