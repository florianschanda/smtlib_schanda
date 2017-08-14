(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00101101100100111011111)))
;; x should be Float32(0x4A96C9DF [Rational(9882079, 2), 4941039.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0x40152D93BE0000000000000000000000 [Rational(9882079, 2), 4941039.500000])

(declare-const z Float128)
(assert (= z (fp #b0 #b100000000010101 #b0010110110010011101111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
