(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-halfpoint) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b00000011101100010100100)))
;; x should be Float32(0xC981D8A4 [Rational(-2127401, 2), -1063700.500000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNE x)))
;; y should be Float16(-oo)

(declare-const z Float16)
(assert (= z (fp #b1 #b11111 #b0000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
