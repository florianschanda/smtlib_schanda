(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00100010 #b10110011011011001101111)))
;; x should be Float32(0x9159B66F [Rational(-14268015, 83076749736557242056487941267521536), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0xBFA2B36CDE0000000000000000000000 [Rational(-14268015, 83076749736557242056487941267521536), -0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xBFA2B36CDE0000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
