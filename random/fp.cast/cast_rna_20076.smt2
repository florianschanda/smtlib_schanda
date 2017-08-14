(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC8F63AF0)))
;; x should be Float32(0xC8F63AF0 [Rational(-1008559, 2), -504279.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xC11EC75E00000000 [Rational(-1008559, 2), -504279.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010001 #b1110110001110101111000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
