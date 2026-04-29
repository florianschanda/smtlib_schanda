(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01100010111101111111101)))
;; x should be Float32(0x4AB17BFD [Rational(11631613, 2), 5815806.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x41562F7FA0000000 [Rational(11631613, 2), 5815806.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x41562F7FA0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
