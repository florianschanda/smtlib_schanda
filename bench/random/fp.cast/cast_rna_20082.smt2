(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCABF20CB)))
;; x should be Float32(0xCABF20CB [Rational(-12525771, 2), -6262885.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xC157E41960000000 [Rational(-12525771, 2), -6262885.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010101 #b0111111001000001100101100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
