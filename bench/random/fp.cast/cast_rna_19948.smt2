(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b10101010011011001100100)))
;; x should be Float32(0x49D53664 [Rational(3493273, 2), 1746636.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0x4013AA6CC80000000000000000000000 [Rational(3493273, 2), 1746636.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x4013AA6CC80000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
