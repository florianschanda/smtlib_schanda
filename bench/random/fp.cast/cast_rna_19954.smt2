(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10000011111000101100110)))
;; x should be Float32(0x4A41F166 [Rational(6355123, 2), 3177561.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0x401483E2CC0000000000000000000000 [Rational(6355123, 2), 3177561.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x401483E2CC0000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
