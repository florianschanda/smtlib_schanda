(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b10110100000000001101100)))
;; x should be Float32(0x49DA006C [Rational(3571739, 2), 1785869.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0x4013B400D80000000000000000000000 [Rational(3571739, 2), 1785869.500000])

(declare-const z Float128)
(assert (= z (fp #b0 #b100000000010011 #b1011010000000000110110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
