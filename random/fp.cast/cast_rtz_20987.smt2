(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b00101100 #b01000110111101000111110)))
;; x should be Float32(0x96237A3E [Rational(-5356831, 40564819207303340847894502572032), -0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTZ x)))
;; y should be Float16(-zero)

(declare-const z Float16)
(assert (= z (fp #b1 #b00000 #b0000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
