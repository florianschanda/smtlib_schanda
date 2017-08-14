(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11101100110100001011111)))
;; x should be Float32(0x4AF6685F [Rational(16148575, 2), 8074287.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0x4015ECD0BE0000000000000000000000 [Rational(16148575, 2), 8074287.500000])

(declare-const z Float128)
(assert (= z (fp #b0 #b100000000010101 #b1110110011010000101111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
