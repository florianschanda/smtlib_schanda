(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b00001001110100000010010)))
;; x should be Float32(0x4A04E812 [Rational(4355081, 2), 2177540.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0x401409D0240000000000000000000000 [Rational(4355081, 2), 2177540.500000])

(declare-const z Float128)
(assert (= z (fp #b0 #b100000000010100 #b0000100111010000001001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
