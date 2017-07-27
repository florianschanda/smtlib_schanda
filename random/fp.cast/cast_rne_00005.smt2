(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4ADDB405)))
;; x should be Float32(0x4ADDB405 [Rational(14529541, 2), 7264770.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x415BB680A0000000 [Rational(14529541, 2), 7264770.500000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010101 #b1011101101101000000010100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
